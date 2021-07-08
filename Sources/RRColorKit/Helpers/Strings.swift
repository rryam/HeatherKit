//
//  Strings.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import Foundation

public struct TitleText {
    static let history = "history"
    static let gradientGame = "gradient game".uppercased()
    static let chromaGame = "chroma game".uppercased()
    static let settings = "settings".uppercased()
}

public struct HeaderText {
    static let target = "target".uppercased()
    static let yours = "yours".uppercased()
    static let overallScore = "Overall score".uppercased()
}

public struct ButtonText {
    static let share = "share".uppercased()
    static let evaluate = "Evaluate".uppercased()
    static let tryAgain = "try again".uppercased()
    static let next = "next".uppercased()
    static let showScore = "show".uppercased()
}

public struct TabText {

}

public struct LinkText {
    static let creatorTwitterApp = "twitter://user?screen_name=rudrankriyam"
    static let creatorTwitterWeb = "https://www.twitter.com/rudrankriyam"
    static let creatorMail = "rudrankriyam@gmail.com"
    static let chromaTwitterApp = "twitter://user?screen_name=chromagame_"
    static let chromaTwitterWeb = "https://www.twitter.com/chromagame_"
    static let gradientTwitterApp = "twitter://user?screen_name=gradientsgame"
    static let gradientTwitterWeb = "https://www.twitter.com/gradientsgame"
}

public enum TabItemType: Int, CaseIterable {
    case rgb = 1
    case hsb
    case cmyk
    case radient
    case more
    
    var name: String {
        String(describing: self).uppercased()
    }
    
    var image: String {
        switch self {
        case .rgb:
            return "circle.grid.hex"
        case .hsb:
            return "circle.grid.2x2"
        case .cmyk:
            return "circles.hexagonpath"
        case .radient:
            return "person.2.wave.2.fill"
        case .more:
            return "gear"
        }
    }
}
