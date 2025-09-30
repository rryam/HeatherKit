//
//  ColorProtocol.swift
//  HeatherKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

/// A protocol that defines the basic color creation interface.
///
/// Types conforming to this protocol can create SwiftUI `Color` instances
/// from their underlying color representation.
public protocol ColorProtocol {
    /// Creates a new `Color` instance from the conforming type's color values.
    ///
    /// - Returns: A SwiftUI `Color` representing the color values.
    func new() -> Color
}

/// A protocol for colors represented in the RGB color space.
///
/// RGB colors are defined by their red, green, and blue components,
/// each ranging from 0.0 to 1.0.
public protocol RGBColorProtocol: ColorProtocol {
    /// The red component of the color, ranging from 0.0 to 1.0.
    var red: Double { get set }

    /// The green component of the color, ranging from 0.0 to 1.0.
    var green: Double { get set }

    /// The blue component of the color, ranging from 0.0 to 1.0.
    var blue: Double { get set }
}

extension RGBColorProtocol {
    public func new() -> Color {
        Color(red: red, green: green, blue: blue)
    }
}

/// A protocol for colors represented in the HSB (Hue, Saturation, Brightness) color space.
///
/// HSB is a cylindrical color model where colors are defined by their hue angle,
/// saturation percentage, and brightness level.
public protocol HSBColorProtocol: ColorProtocol {
    /// The hue component of the color, ranging from 0.0 to 1.0.
    ///
    /// Represents the color's position on the color wheel:
    /// - 0.0: Red
    /// - 0.33: Green
    /// - 0.67: Blue
    /// - 1.0: Red (wraps around)
    var hue: Double { get set }

    /// The saturation component of the color, ranging from 0.0 to 1.0.
    ///
    /// Represents the intensity of the color:
    /// - 0.0: Grayscale
    /// - 1.0: Full color saturation
    var saturation: Double { get set }

    /// The brightness component of the color, ranging from 0.0 to 1.0.
    ///
    /// Represents the lightness of the color:
    /// - 0.0: Black
    /// - 1.0: Maximum brightness
    var brightness: Double { get set }
}

extension HSBColorProtocol {
    public func new() -> Color {
        Color(hue: hue, saturation: saturation, brightness: brightness)
    }
}

/// A protocol for colors represented in the CMYK color space.
///
/// CMYK is a subtractive color model used in color printing, where colors
/// are created by combining cyan, magenta, yellow, and black (key) inks.
public protocol CMYKColorProtocol: ColorProtocol {
    /// The cyan component of the color, ranging from 0.0 to 1.0.
    var cyan: Double { get set }

    /// The magenta component of the color, ranging from 0.0 to 1.0.
    var magenta: Double { get set }

    /// The yellow component of the color, ranging from 0.0 to 1.0.
    var yellow: Double { get set }

    /// The black (key) component of the color, ranging from 0.0 to 1.0.
    var black: Double { get set }
}

extension CMYKColorProtocol {
    public func new() -> Color {
        Color(cyan: cyan, magenta: magenta, yellow: yellow, black: black)
    }
}

public extension Color {
    /// Creates a color from CMYK (Cyan, Magenta, Yellow, Black) values.
    ///
    /// This initializer converts CMYK color values to RGB color space
    /// using standard conversion formulas.
    ///
    /// - Parameters:
    ///   - cyan: The cyan component, ranging from 0.0 to 1.0.
    ///   - magenta: The magenta component, ranging from 0.0 to 1.0.
    ///   - yellow: The yellow component, ranging from 0.0 to 1.0.
    ///   - black: The black (key) component, ranging from 0.0 to 1.0.
    init(cyan: Double, magenta: Double, yellow: Double, black: Double) {
        let red = (1 - cyan) * (1 - black)
        let green = (1 - magenta) * (1 - black)
        let blue = (1 - yellow) * (1 - black)

        self.init(red: red, green: green, blue: blue)
    }
}
