//
//  GradientModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

public class RGBRandomGradient: GradientProtocol {
    public var startColor: ColorProtocol = RGBRandomColor()
    public var endColor: ColorProtocol = RGBRandomColor()
}

public class RGBUserGradient: GradientProtocol {
    public var startColor: ColorProtocol = RGBUserStartColor()
    public var endColor: ColorProtocol = RGBUserEndColor()
}

public class RGBUserStartColor: RGBColorProtocol {
    public var red: Double = Constants.gradientStartColor
    public var green: Double = Constants.gradientStartColor
    public var blue: Double = Constants.gradientStartColor
}

public class RGBUserEndColor: RGBColorProtocol {
    public var red: Double = Constants.gradientEndColor
    public var green: Double = Constants.gradientEndColor
    public var blue: Double = Constants.gradientEndColor
}

public class RGBLogoGradient: GradientProtocol {
    public var startColor: ColorProtocol = RGBLogoStartColor()
    public var endColor: ColorProtocol = RGBLogoEndColor()
}

public class RGBTestGradient: GradientProtocol {
    public var startColor: ColorProtocol = RGBTestStartColor()
    public var endColor: ColorProtocol = RGBTestEndColor()
}
