//
//  Assets.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import Foundation

struct Assets {
    // MARK:- SF Symbols
    static let minus = "minus"
    static let plus = "plus"
    static let rightArrow = "chevron.right"
    static let selected = "checkmark"

    static let rgb = "circle.grid.hex"
    static let hsb = "circle.grid.2x2"
    static let cmy = "circles.hexagonpath"
    static let history = "clock"
    static let settings = "gear"
    static let arcade = "gameController"
    static let relax = "bolt.heart"
}

struct Constants {
    static var random: Double {
        Double.random(in: 0...1)
    }
    
    static let gradientStartColor: Double = 75/255
    static let gradientEndColor: Double = 175/255
}
