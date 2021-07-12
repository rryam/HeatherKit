//
//  Color.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 12/07/21.
//

import SwiftUI

public extension Color {
    var hex: String {
        let components = UIColor(self).cgColor.components
        let red: CGFloat = components?[0] ?? 0.0
        let green: CGFloat = components?[1] ?? 0.0
        let blue: CGFloat = components?[2] ?? 0.0
        
        return String(format: "%02lX%02lX%02lX", lroundf(Float(red * 255)), lroundf(Float(green * 255)), lroundf(Float(blue * 255)))
    }
}
