//
//  GradientProtocol.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

protocol GradientProtocol {
    var leftColor: ColorProtocol { get set }
    var rightColor: ColorProtocol { get set }

    func newGradient() -> Gradient
}

extension GradientProtocol {
    func newGradient() -> Gradient {
        Gradient(colors: [leftColor.newColor(), rightColor.newColor()])
    }
}
