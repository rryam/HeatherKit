//
//  ColorModel.swift
//  HeatherKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

// MARK: - RGB

/// A randomly generated RGB color.
///
/// Creates an RGB color with random red, green, and blue values.
public struct RGBRandomColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a random RGB color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: random value).
  ///   - green: The green component (default: random value).
  ///   - blue: The blue component (default: random value).
  public init(red: Double = Constants.random, green: Double = Constants.random, blue: Double = Constants.random) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// An initial RGB color for gradient games.
///
/// Provides a neutral starting color for gradient-based games and interactions.
public struct RGBInitialColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates an initial RGB color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: gradient end color constant).
  ///   - green: The green component (default: gradient end color constant).
  ///   - blue: The blue component (default: gradient end color constant).
  public init(red: Double = Constants.gradientEndColor, green: Double = Constants.gradientEndColor, blue: Double = Constants.gradientEndColor) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// A predefined test color in RGB color space.
public struct RGBTestColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a test RGB color with specific values.
  ///
  /// - Parameters:
  ///   - red: The red component (default: 20/255).
  ///   - green: The green component (default: 90/255).
  ///   - blue: The blue component (default: 120/255).
  public init(red: Double = 20/255, green: Double = 90/255, blue: Double = 120/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// The starting color for test gradients.
public struct RGBTestStartColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a test gradient start color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: 19/255).
  ///   - green: The green component (default: 84/255).
  ///   - blue: The blue component (default: 122/255).
  public init(red: Double = 19/255, green: Double = 84/255, blue: Double = 122/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// The ending color for test gradients.
public struct RGBTestEndColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a test gradient end color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: 128/255).
  ///   - green: The green component (default: 208/255).
  ///   - blue: The blue component (default: 199/255).
  public init(red: Double = 128/255, green: Double = 208/255, blue: Double = 199/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// The starting color for logo gradients.
public struct RGBLogoStartColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a logo gradient start color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: 94/255).
  ///   - green: The green component (default: 92/255).
  ///   - blue: The blue component (default: 230/255).
  public init(red: Double = 94/255, green: Double = 92/255, blue: Double = 230/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// The ending color for logo gradients.
public struct RGBLogoEndColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a logo gradient end color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: 191/255).
  ///   - green: The green component (default: 90/255).
  ///   - blue: The blue component (default: 242/255).
  public init(red: Double = 191/255, green: Double = 90/255, blue: Double = 242/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// The starting color for user-defined gradients.
public struct RGBUserStartColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a user gradient start color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: gradient start color constant).
  ///   - green: The green component (default: gradient start color constant).
  ///   - blue: The blue component (default: gradient start color constant).
  public init(red: Double = Constants.gradientStartColor, green: Double = Constants.gradientStartColor, blue: Double = Constants.gradientStartColor) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

/// The ending color for user-defined gradients.
public struct RGBUserEndColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  /// Creates a user gradient end color.
  ///
  /// - Parameters:
  ///   - red: The red component (default: gradient end color constant).
  ///   - green: The green component (default: gradient end color constant).
  ///   - blue: The blue component (default: gradient end color constant).
  public init(red: Double = Constants.gradientEndColor, green: Double = Constants.gradientEndColor, blue: Double = Constants.gradientEndColor) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

// MARK: - HSB

/// A randomly generated HSB color.
///
/// Creates an HSB color with random hue, saturation, and brightness values.
public struct HSBRandomColor: HSBColorProtocol {
  public var hue: Double
  public var saturation: Double
  public var brightness: Double

  /// Creates a random HSB color.
  ///
  /// - Parameters:
  ///   - hue: The hue component (default: random value).
  ///   - saturation: The saturation component (default: random value).
  ///   - brightness: The brightness component (default: random value).
  public init(hue: Double = Constants.random, saturation: Double = Constants.random, brightness: Double = Constants.random) {
    self.hue = hue
    self.saturation = saturation
    self.brightness = brightness
  }
}

/// A predefined test color in HSB color space.
public struct HSBTestColor: HSBColorProtocol {
  public var hue: Double
  public var saturation: Double
  public var brightness: Double

  /// Creates a test HSB color with specific values.
  ///
  /// - Parameters:
  ///   - hue: The hue component (default: 50/360).
  ///   - saturation: The saturation component (default: 20/100).
  ///   - brightness: The brightness component (default: 50/100).
  public init(hue: Double = 50/360, saturation: Double = 20/100, brightness: Double = 50/100) {
    self.hue = hue
    self.saturation = saturation
    self.brightness = brightness
  }
}

/// An initial HSB color for gradient games.
///
/// Provides a neutral starting color in HSB color space.
public struct HSBInitialColor: HSBColorProtocol {
  public var hue: Double
  public var saturation: Double
  public var brightness: Double

  /// Creates an initial HSB color.
  ///
  /// - Parameters:
  ///   - hue: The hue component (default: 0/360).
  ///   - saturation: The saturation component (default: 0/100).
  ///   - brightness: The brightness component (default: 74/100).
  public init(hue: Double = 0/360, saturation: Double = 0/100, brightness: Double = 74/100) {
    self.hue = hue
    self.saturation = saturation
    self.brightness = brightness
  }
}

// MARK: - CMYK

/// A randomly generated CMYK color.
///
/// Creates a CMYK color with random cyan, magenta, yellow, and black values.
public struct CMYKRandomColor: CMYKColorProtocol {
  public var cyan: Double
  public var magenta: Double
  public var yellow: Double
  public var black: Double

  /// Creates a random CMYK color.
  ///
  /// - Parameters:
  ///   - cyan: The cyan component (default: random value).
  ///   - magenta: The magenta component (default: random value).
  ///   - yellow: The yellow component (default: random value).
  ///   - black: The black component (default: random value).
  public init(cyan: Double = Constants.random, magenta: Double = Constants.random, yellow: Double = Constants.random, black: Double = Constants.random) {
    self.cyan = cyan
    self.magenta = magenta
    self.yellow = yellow
    self.black = black
  }
}

/// An initial CMYK color for gradient games.
///
/// Provides a neutral starting color in CMYK color space.
public struct CMYKInitialColor: CMYKColorProtocol {
  public var cyan: Double
  public var magenta: Double
  public var yellow: Double
  public var black: Double

  /// Creates an initial CMYK color.
  ///
  /// - Parameters:
  ///   - cyan: The cyan component (default: 0.00).
  ///   - magenta: The magenta component (default: 0.00).
  ///   - yellow: The yellow component (default: 0.00).
  ///   - black: The black component (default: 0.31).
  public init(cyan: Double = 0.00, magenta: Double = 0.00, yellow: Double = 0.00, black: Double = 0.31) {
    self.cyan = cyan
    self.magenta = magenta
    self.yellow = yellow
    self.black = black
  }
}

/// A predefined test color in CMYK color space.
public struct CMYKTestColor: CMYKColorProtocol {
  public var cyan: Double
  public var magenta: Double
  public var yellow: Double
  public var black: Double

  /// Creates a test CMYK color with specific values.
  ///
  /// - Parameters:
  ///   - cyan: The cyan component (default: 0.84).
  ///   - magenta: The magenta component (default: 0.31).
  ///   - yellow: The yellow component (default: 0.00).
  ///   - black: The black component (default: 0.52).
  public init(cyan: Double = 0.84, magenta: Double = 0.31, yellow: Double = 0.00, black: Double = 0.52) {
    self.cyan = cyan
    self.magenta = magenta
    self.yellow = yellow
    self.black = black
  }
}
