//
//  GradientProtocol.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

public protocol GradientProtocol {
    var startColor: ColorProtocol { get set }
    var endColor: ColorProtocol { get set }

    func new() -> Gradient
}

extension GradientProtocol {
    public func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}
