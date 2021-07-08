//
//  GradientProtocol.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

public protocol GradientProtocol {
    func new() -> Gradient
}

public protocol RGBGradientProtocol: GradientProtocol {
    var startColor: RGBColorProtocol { get set }
    var endColor: RGBColorProtocol { get set }
}

extension RGBGradientProtocol {
    public func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}

public protocol HSBGradientProtocol: GradientProtocol {
    var startColor: HSBColorProtocol { get set }
    var endColor: HSBColorProtocol { get set }
}

extension HSBGradientProtocol {
    public func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}

public protocol CMYKGradientProtocol: GradientProtocol {
    var startColor: CMYKColorProtocol { get set }
    var endColor: CMYKColorProtocol { get set }
}

extension CMYKGradientProtocol {
    public func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}
