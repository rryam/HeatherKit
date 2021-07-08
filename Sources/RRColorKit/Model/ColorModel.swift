//
//  ColorModel.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 09/07/21.
//

import SwiftUI

public class RGBRandomColor: RGBColorProtocol {
    public var red: Double = Constants.random
    public var green: Double = Constants.random
    public var blue: Double = Constants.random
}

public class RGBInitialColor: RGBColorProtocol {
    public var red: Double = Constants.gradientEndColor
    public var green: Double = Constants.gradientEndColor
    public var blue: Double = Constants.gradientEndColor
}

public class RGBTestStartColor: RGBColorProtocol {
    public var red: Double = 19/255
    public var green: Double = 84/255
    public var blue: Double = 122/255
}

public class RGBTestEndColor: RGBColorProtocol {
    public var red: Double = 128/255
    public var green: Double = 208/255
    public var blue: Double = 199/255
}

public class RGBLogoStartColor: RGBColorProtocol {
    public var red: Double = 94/255
    public var green: Double = 92/255
    public var blue: Double = 230/255
}

public class RGBLogoEndColor: RGBColorProtocol {
    public  var red: Double = 191/255
    public var green: Double = 90/255
    public var blue: Double = 242/255
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
