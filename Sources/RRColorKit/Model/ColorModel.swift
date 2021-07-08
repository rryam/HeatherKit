//
//  ColorModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

// MARK: - RGB
public class RGBRandomColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = Constants.random, green: Double = Constants.random, blue: Double = Constants.random) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

public class RGBInitialColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = Constants.gradientEndColor, green: Double = Constants.gradientEndColor, blue: Double = Constants.gradientEndColor) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

public class RGBTestStartColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = 19/255, green: Double = 84/255, blue: Double = 122/255) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

public class RGBTestEndColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = 128/255, green: Double = 208/255, blue: Double = 199/255) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
}

public class RGBLogoStartColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = 94/255, green: Double = 92/255, blue: Double = 230/255) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

public class RGBLogoEndColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = 191/255, green: Double = 90/255, blue: Double = 242/255) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

public class RGBUserStartColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = Constants.gradientStartColor, green: Double = Constants.gradientStartColor, blue: Double = Constants.gradientStartColor) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

public class RGBUserEndColor: RGBColorProtocol {
    public var red: Double
    public var green: Double
    public var blue: Double
    
    public init(red: Double = Constants.gradientEndColor, green: Double = Constants.gradientEndColor, blue: Double = Constants.gradientEndColor) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

// MARK: - CMYK
public class CMYKRandomColor: CMYKColorProtocol {
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

public class CMYKUserColor: CMYKColorProtocol {
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

public class CMYKTestColor: CMYKColorProtocol {
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
