//
//  String.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 12/07/21.
//

import SwiftUI

public extension String {
    var color: Color {
        var hexNumber: UInt64 = 0
        _ = Scanner(string: self).scanHexInt64(&hexNumber)
        
        let red = Double((hexNumber & 0xFF0000) >> 16) / 255
        let green = Double((hexNumber & 0x00FF00) >> 8) / 255
        let blue = Double((hexNumber & 0x0000FF) >> 0) / 255
        
        return Color(red: red, green: green, blue: blue)
    }
}

public extension String {
    var symbol: String {
        "\(self.first?.description.lowercased() ?? ""): "
    }
}
