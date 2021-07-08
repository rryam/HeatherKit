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
