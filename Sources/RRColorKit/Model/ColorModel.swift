//
//  ColorModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

class RGBRandomColor: RGBColorProtocol {
    var red: Double = Constants.random
    var green: Double = Constants.random
    var blue: Double = Constants.random
}

class RGBInitialColor: RGBColorProtocol {
    var red: Double = Constants.gradientEndColor
    var green: Double = Constants.gradientEndColor
    var blue: Double = Constants.gradientEndColor
}

class RGBTestStartColor: RGBColorProtocol {
    var red: Double = 19/255
    var green: Double = 84/255
    var blue: Double = 122/255
}

class RGBTestEndColor: RGBColorProtocol {
    var red: Double = 128/255
    var green: Double = 208/255
    var blue: Double = 199/255
}

class RGBLogoStartColor: RGBColorProtocol {
    var red: Double = 94/255
    var green: Double = 92/255
    var blue: Double = 230/255
}

class RGBLogoEndColor: RGBColorProtocol {
    var red: Double = 191/255
    var green: Double = 90/255
    var blue: Double = 242/255
}
