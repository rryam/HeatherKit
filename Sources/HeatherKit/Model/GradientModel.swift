//
//  GradientModel.swift
//  HeatherKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

/// A gradient with randomly generated RGB start and end colors.
///
/// Creates a linear gradient using two random RGB colors.
public class RGBRandomGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol

    /// Creates a random RGB gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: random RGB color).
    ///   - endColor: The ending color of the gradient (default: random RGB color).
    public init(startColor: RGBColorProtocol = RGBRandomColor(), endColor: RGBColorProtocol = RGBRandomColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

/// A gradient for user-created RGB colors.
///
/// Creates a gradient using user-defined RGB start and end colors.
public class RGBUserGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol

    /// Creates a user-defined RGB gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: user start color).
    ///   - endColor: The ending color of the gradient (default: user end color).
    public init(startColor: RGBColorProtocol = RGBUserStartColor(), endColor: RGBColorProtocol = RGBUserEndColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

/// A gradient using the app logo colors.
///
/// Creates a gradient using the predefined RGB colors for the application logo.
public class RGBLogoGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol

    /// Creates a logo RGB gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: logo start color).
    ///   - endColor: The ending color of the gradient (default: logo end color).
    public init(startColor: RGBColorProtocol = RGBLogoStartColor(), endColor: RGBColorProtocol = RGBLogoEndColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

/// A gradient for testing purposes in RGB color space.
///
/// Creates a gradient using predefined RGB test colors.
public class RGBTestGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol

    /// Creates a test RGB gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: test start color).
    ///   - endColor: The ending color of the gradient (default: test end color).
    public init(startColor: RGBColorProtocol = RGBTestStartColor(), endColor: RGBColorProtocol = RGBTestEndColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

// MARK: - HSB Gradients

/// A gradient with randomly generated HSB start and end colors.
///
/// Creates a linear gradient using two random HSB colors.
public class HSBRandomGradient: HSBGradientProtocol {
    public var startColor: HSBColorProtocol
    public var endColor: HSBColorProtocol

    /// Creates a random HSB gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: random HSB color).
    ///   - endColor: The ending color of the gradient (default: random HSB color).
    public init(startColor: HSBColorProtocol = HSBRandomColor(), endColor: HSBColorProtocol = HSBRandomColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

/// A gradient for user-created HSB colors.
///
/// Creates a gradient using user-defined HSB start and end colors.
public class HSBUserGradient: HSBGradientProtocol {
    public var startColor: HSBColorProtocol
    public var endColor: HSBColorProtocol

    /// Creates a user-defined HSB gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: initial HSB color).
    ///   - endColor: The ending color of the gradient (default: initial HSB color).
    public init(startColor: HSBColorProtocol = HSBInitialColor(), endColor: HSBColorProtocol = HSBInitialColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

/// A gradient for testing purposes in HSB color space.
///
/// Creates a gradient using predefined HSB test colors.
public class HSBTestGradient: HSBGradientProtocol {
    public var startColor: HSBColorProtocol
    public var endColor: HSBColorProtocol

    /// Creates a test HSB gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: test HSB color).
    ///   - endColor: The ending color of the gradient (default: test HSB color).
    public init(startColor: HSBColorProtocol = HSBTestColor(), endColor: HSBColorProtocol = HSBTestColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

// MARK: - CMYK Gradients

/// A gradient with randomly generated CMYK start and end colors.
///
/// Creates a linear gradient using two random CMYK colors.
public class CMYKRandomGradient: CMYKGradientProtocol {
    public var startColor: CMYKColorProtocol
    public var endColor: CMYKColorProtocol

    /// Creates a random CMYK gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: random CMYK color).
    ///   - endColor: The ending color of the gradient (default: random CMYK color).
    public init(startColor: CMYKColorProtocol = CMYKRandomColor(), endColor: CMYKColorProtocol = CMYKRandomColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

/// A gradient for user-created CMYK colors.
///
/// Creates a gradient using user-defined CMYK start and end colors.
public class CMYKUserGradient: CMYKGradientProtocol {
    public var startColor: CMYKColorProtocol
    public var endColor: CMYKColorProtocol

    /// Creates a user-defined CMYK gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: initial CMYK color).
    ///   - endColor: The ending color of the gradient (default: initial CMYK color).
    public init(startColor: CMYKColorProtocol = CMYKInitialColor(), endColor: CMYKColorProtocol = CMYKInitialColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

/// A gradient for testing purposes in CMYK color space.
///
/// Creates a gradient using predefined CMYK test colors.
public class CMYKTestGradient: CMYKGradientProtocol {
    public var startColor: CMYKColorProtocol
    public var endColor: CMYKColorProtocol

    /// Creates a test CMYK gradient.
    ///
    /// - Parameters:
    ///   - startColor: The starting color of the gradient (default: test CMYK color).
    ///   - endColor: The ending color of the gradient (default: test CMYK color).
    public init(startColor: CMYKColorProtocol = CMYKTestColor(), endColor: CMYKColorProtocol = CMYKTestColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}
