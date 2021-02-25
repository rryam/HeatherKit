//
//  ColorProtocol.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import SwiftUI

protocol ColorProtocol {
    var red: Double { get set }
    var green: Double { get set }
    var blue: Double { get set }

    func newColor() -> Color
}

extension ColorProtocol {
    func newColor() -> Color {
        Color(red: red, green: green, blue: blue, opacity: 1.0)
    }
}
