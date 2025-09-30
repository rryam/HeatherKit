//
//  Color.swift
//  HeatherKit
//
//  Created by Rudrank Riyam on 12/07/21.
//

import SwiftUI

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

public extension Color {
    /// Returns the hexadecimal string representation of the color.
    ///
    /// Converts the color to its RGB components and formats them as a
    /// 6-character hexadecimal string (e.g., "FF0000" for red).
    ///
    /// - Returns: A string containing the uppercase hexadecimal color code without a leading "#".
    ///
    /// ## Example
    /// ```swift
    /// let color = Color.red
    /// print(color.hex) // Prints "FF0000"
    /// ```
    var hex: String {
        #if canImport(UIKit)
        let components = UIColor(self).cgColor.components
        #elseif canImport(AppKit)
        let components = NSColor(self).cgColor.components
        #endif
        let red: CGFloat = components?[0] ?? 0.0
        let green: CGFloat = components?[1] ?? 0.0
        let blue: CGFloat = components?[2] ?? 0.0

        return String(format: "%02lX%02lX%02lX", lroundf(Float(red * 255)), lroundf(Float(green * 255)), lroundf(Float(blue * 255)))
    }
}
