//
//  Assets.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import Foundation

public struct Assets {
    // MARK:- SF Symbols
    public static let minus = "minus"
    public static let plus = "plus"
    public static let rightArrow = "chevron.right"
    public static let selected = "checkmark"

    public static let rgb = "circle.grid.hex"
    public static let hsb = "circle.grid.2x2"
    public static let cmy = "circles.hexagonpath"
    public static let history = "clock"
    public static let settings = "gear"
    public static let arcade = "gameController"
    public static let relax = "bolt.heart"
}

public struct Constants {
    public static var random: Double {
        Double.random(in: 0...1)
    }
    
    public static let customOpacity: Double = 0.7
    public static let customRadius: Double = 16
    public static let customBlurRadius: Double = 5
    
    public static let gradientStartColor: Double = 75/255
    public static let gradientEndColor: Double = 175/255
}
