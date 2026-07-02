//
//  String.swift
//  HeatherKit
//
//  Created by Rudrank Riyam on 12/07/21.
//

import SwiftUI

public extension String {
    /// Converts a hexadecimal string to a SwiftUI `Color`.
    ///
    /// Parses a hexadecimal color string (with or without a leading "#") and
    /// converts it to a SwiftUI `Color` instance.
    ///
    /// - Returns: A `Color` instance representing the hexadecimal color value.
    ///
    /// ## Example
    /// ```swift
    /// let color = "FF0000".color  // Red color
    /// let colorWithHash = "#00FF00".color  // Green color
    /// ```
    var color: Color {
        var hexNumber: UInt64 = 0
        let hexString = hasPrefix("#") ? String(dropFirst()) : self
        _ = Scanner(string: hexString).scanHexInt64(&hexNumber)

        let red = Double((hexNumber & 0xFF0000) >> 16) / 255
        let green = Double((hexNumber & 0x00FF00) >> 8) / 255
        let blue = Double((hexNumber & 0x0000FF) >> 0) / 255

        return Color(red: red, green: green, blue: blue)
    }
}

public extension String {
    /// Returns a lowercase symbol representation of the first character.
    ///
    /// Creates a formatted string containing the first character of the string
    /// in lowercase, followed by a colon and space.
    ///
    /// - Returns: A string in the format "x: " where x is the first character in lowercase,
    ///            or ": " if the string is empty.
    ///
    /// ## Example
    /// ```swift
    /// let label = "Red".symbol  // Returns "r: "
    /// let empty = "".symbol     // Returns ": "
    /// ```
    var symbol: String {
        "\(self.first?.description.lowercased() ?? ""): "
    }
}
