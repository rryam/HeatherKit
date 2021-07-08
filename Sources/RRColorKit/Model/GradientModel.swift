//
//  GradientModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

class RGBRandomGradient: GradientProtocol {
    var startColor: ColorProtocol = RGBRandomColor()
    var endColor: ColorProtocol = RGBRandomColor()
}

class RGBUserGradient: GradientProtocol {
    var startColor: ColorProtocol = RGBUserStartColor()
    var endColor: ColorProtocol = RGBUserEndColor()
}

class RGBUserStartColor: RGBColorProtocol {
    var red: Double = Constants.gradientStartColor
    var green: Double = Constants.gradientStartColor
    var blue: Double = Constants.gradientStartColor
}

class RGBUserEndColor: RGBColorProtocol {
    var red: Double = Constants.gradientEndColor
    var green: Double = Constants.gradientEndColor
    var blue: Double = Constants.gradientEndColor
}

class RGBLogoGradient: GradientProtocol {
    var startColor: ColorProtocol = RGBLogoStartColor()
    var endColor: ColorProtocol = RGBLogoEndColor()
}

class RGBTestGradient: GradientProtocol {
    var startColor: ColorProtocol = RGBTestStartColor()
    var endColor: ColorProtocol = RGBTestEndColor()
}
