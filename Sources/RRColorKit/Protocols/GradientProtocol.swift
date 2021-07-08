//
//  GradientProtocol.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

protocol GradientProtocol {
    var startColor: ColorProtocol { get set }
    var endColor: ColorProtocol { get set }

    func new() -> Gradient
}

extension GradientProtocol {
    func new() -> Gradient {
        Gradient(colors: [startColor.new(), endColor.new()])
    }
}
