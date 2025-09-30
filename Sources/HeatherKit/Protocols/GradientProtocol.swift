//
//  GradientProtocol.swift
//  HeatherKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

/// A protocol that defines the basic gradient creation interface.
///
/// Types conforming to this protocol can create SwiftUI `Gradient` instances
/// from their underlying color representation.
public protocol GradientProtocol {
    /// Creates a new `Gradient` instance from the conforming type's colors.
    ///
    /// - Returns: A SwiftUI `Gradient` representing the gradient colors.
    func new() -> Gradient
}

/// A protocol for gradients represented in the RGB color space.
///
/// RGB gradients are defined by their start and end colors in RGB format.
public protocol RGBGradientProtocol: GradientProtocol {
    /// The starting color of the gradient in RGB color space.
    var startColor: RGBColorProtocol { get set }

    /// The ending color of the gradient in RGB color space.
    var endColor: RGBColorProtocol { get set }
}

extension RGBGradientProtocol {
    public func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}

/// A protocol for gradients represented in the HSB color space.
///
/// HSB gradients are defined by their start and end colors in HSB format.
public protocol HSBGradientProtocol: GradientProtocol {
    /// The starting color of the gradient in HSB color space.
    var startColor: HSBColorProtocol { get set }

    /// The ending color of the gradient in HSB color space.
    var endColor: HSBColorProtocol { get set }
}

extension HSBGradientProtocol {
    public func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}

/// A protocol for gradients represented in the CMYK color space.
///
/// CMYK gradients are defined by their start and end colors in CMYK format.
public protocol CMYKGradientProtocol: GradientProtocol {
    /// The starting color of the gradient in CMYK color space.
    var startColor: CMYKColorProtocol { get set }

    /// The ending color of the gradient in CMYK color space.
    var endColor: CMYKColorProtocol { get set }
}

extension CMYKGradientProtocol {
    public func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}
