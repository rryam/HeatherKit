//
//  ColorProtocol.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

public protocol ColorProtocol {
    func new() -> Color
}

public protocol RGBColorProtocol: ColorProtocol {
    var red: Double { get set }
    var green: Double { get set }
    var blue: Double { get set }
}

extension RGBColorProtocol {
    public func new() -> Color {
        Color(red: red, green: green, blue: blue)
    }
}

public protocol HSBColorProtocol: ColorProtocol {
    var hue: Double { get set }
    var saturation: Double { get set }
    var brightness: Double { get set }
}

extension HSBColorProtocol {
    func new() -> Color {
        Color(hue: hue, saturation: saturation, brightness: brightness)
    }
}

public protocol CMYKColorProtocol: ColorProtocol {
    var cyan: Double { get set }
    var magenta: Double { get set }
    var yellow: Double { get set }
    var black: Double { get set }
}

extension CMYKColorProtocol {
    func new() -> Color {
        Color(cyan: cyan, magenta: magenta, yellow: yellow, black: black)
    }
}

public extension Color {
    init(cyan: Double, magenta: Double, yellow: Double, black: Double) {
        let red = (1 - cyan) * (1 - black)
        let green = (1 - magenta) * (1 - black)
        let blue = (1 - yellow) * (1 - black)
        
        self.init(red: red, green: green, blue: blue)
    }
}
