//
//  GradientModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

public class RGBRandomGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol
    
    public init(startColor: RGBColorProtocol = RGBRandomColor(), endColor: RGBColorProtocol = RGBRandomColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

public class RGBUserGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol
    
    public init(startColor: RGBColorProtocol = RGBUserStartColor(), endColor: RGBColorProtocol = RGBUserEndColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

public class RGBLogoGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol
    
    public init(startColor: RGBColorProtocol = RGBLogoStartColor(), endColor: RGBColorProtocol = RGBLogoEndColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

public class RGBTestGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol
    public var endColor: RGBColorProtocol

    public init(startColor: RGBColorProtocol = RGBTestStartColor(), endColor: RGBColorProtocol = RGBTestEndColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

// MARK: - HSB Gradients

public class HSBRandomGradient: HSBGradientProtocol {
    public var startColor: HSBColorProtocol
    public var endColor: HSBColorProtocol

    public init(startColor: HSBColorProtocol = HSBRandomColor(), endColor: HSBColorProtocol = HSBRandomColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

public class HSBUserGradient: HSBGradientProtocol {
    public var startColor: HSBColorProtocol
    public var endColor: HSBColorProtocol

    public init(startColor: HSBColorProtocol = HSBInitialColor(), endColor: HSBColorProtocol = HSBInitialColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

public class HSBTestGradient: HSBGradientProtocol {
    public var startColor: HSBColorProtocol
    public var endColor: HSBColorProtocol

    public init(startColor: HSBColorProtocol = HSBTestColor(), endColor: HSBColorProtocol = HSBTestColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

// MARK: - CMYK Gradients

public class CMYKRandomGradient: CMYKGradientProtocol {
    public var startColor: CMYKColorProtocol
    public var endColor: CMYKColorProtocol

    public init(startColor: CMYKColorProtocol = CMYKRandomColor(), endColor: CMYKColorProtocol = CMYKRandomColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

public class CMYKUserGradient: CMYKGradientProtocol {
    public var startColor: CMYKColorProtocol
    public var endColor: CMYKColorProtocol

    public init(startColor: CMYKColorProtocol = CMYKInitialColor(), endColor: CMYKColorProtocol = CMYKInitialColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}

public class CMYKTestGradient: CMYKGradientProtocol {
    public var startColor: CMYKColorProtocol
    public var endColor: CMYKColorProtocol

    public init(startColor: CMYKColorProtocol = CMYKTestColor(), endColor: CMYKColorProtocol = CMYKTestColor()) {
        self.startColor = startColor
        self.endColor = endColor
    }
}
