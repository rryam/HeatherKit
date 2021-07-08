//
//  GradientModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

public class RGBRandomGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol = RGBRandomColor()
    public var endColor: RGBColorProtocol = RGBRandomColor()
}

public class RGBUserGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol = RGBUserStartColor()
    public var endColor: RGBColorProtocol = RGBUserEndColor()
}

public class RGBLogoGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol = RGBLogoStartColor()
    public var endColor: RGBColorProtocol = RGBLogoEndColor()
}

public class RGBTestGradient: RGBGradientProtocol {
    public var startColor: RGBColorProtocol = RGBTestStartColor()
    public var endColor: RGBColorProtocol = RGBTestEndColor()
}
