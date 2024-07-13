//
//  ColorModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

// MARK: - RGB
public struct RGBRandomColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = Constants.random, green: Double = Constants.random, blue: Double = Constants.random) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBInitialColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = Constants.gradientEndColor, green: Double = Constants.gradientEndColor, blue: Double = Constants.gradientEndColor) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBTestColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = 20/255, green: Double = 90/255, blue: Double = 120/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBTestStartColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = 19/255, green: Double = 84/255, blue: Double = 122/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBTestEndColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = 128/255, green: Double = 208/255, blue: Double = 199/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBLogoStartColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = 94/255, green: Double = 92/255, blue: Double = 230/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBLogoEndColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = 191/255, green: Double = 90/255, blue: Double = 242/255) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBUserStartColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = Constants.gradientStartColor, green: Double = Constants.gradientStartColor, blue: Double = Constants.gradientStartColor) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

public struct RGBUserEndColor: RGBColorProtocol {
  public var red: Double
  public var green: Double
  public var blue: Double

  public init(red: Double = Constants.gradientEndColor, green: Double = Constants.gradientEndColor, blue: Double = Constants.gradientEndColor) {
    self.red = red
    self.green = green
    self.blue = blue
  }
}

// MARK: - HSB
public struct HSBRandomColor: HSBColorProtocol {
  public var hue: Double
  public var saturation: Double
  public var brightness: Double

  public init(hue: Double = Constants.random, saturation: Double = Constants.random, brightness: Double = Constants.random) {
    self.hue = hue
    self.saturation = saturation
    self.brightness = brightness
  }
}

public struct HSBTestColor: HSBColorProtocol {
  public var hue: Double
  public var saturation: Double
  public var brightness: Double

  public init(hue: Double = 50/360, saturation: Double = 20/100, brightness: Double = 50/100) {
    self.hue = hue
    self.saturation = saturation
    self.brightness = brightness
  }
}

public struct HSBInitialColor: HSBColorProtocol {
  public var hue: Double
  public var saturation: Double
  public var brightness: Double

  public init(hue: Double = 0/360, saturation: Double = 0/100, brightness: Double = 74/100) {
    self.hue = hue
    self.saturation = saturation
    self.brightness = brightness
  }
}

// MARK: - CMYK
public struct CMYKRandomColor: CMYKColorProtocol {
  public var cyan: Double
  public var magenta: Double
  public var yellow: Double
  public var black: Double

  public init(cyan: Double = Constants.random, magenta: Double = Constants.random, yellow: Double = Constants.random, black: Double = Constants.random) {
    self.cyan = cyan
    self.magenta = magenta
    self.yellow = yellow
    self.black = black
  }
}

public struct CMYKInitialColor: CMYKColorProtocol {
  public var cyan: Double
  public var magenta: Double
  public var yellow: Double
  public var black: Double

  public init(cyan: Double = 0.00, magenta: Double = 0.00, yellow: Double = 0.00, black: Double = 0.31) {
    self.cyan = cyan
    self.magenta = magenta
    self.yellow = yellow
    self.black = black
  }
}

public struct CMYKTestColor: CMYKColorProtocol {
  public var cyan: Double
  public var magenta: Double
  public var yellow: Double
  public var black: Double

  public init(cyan: Double = 0.84, magenta: Double = 0.31, yellow: Double = 0.00, black: Double = 0.52) {
    self.cyan = cyan
    self.magenta = magenta
    self.yellow = yellow
    self.black = black
  }
}
