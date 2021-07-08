//
//  Strings.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 25/02/21.
//

import Foundation

public struct TitleText {
    public static let history = "history"
    public static let gradientGame = "gradient game".uppercased()
    public static let chromaGame = "chroma game".uppercased()
    public static let settings = "settings".uppercased()
}

public struct HeaderText {
    public static let target = "target".uppercased()
    public static let yours = "yours".uppercased()
    public static let overallScore = "Overall score".uppercased()
}

public struct ButtonText {
    public static let share = "share".uppercased()
    public static let evaluate = "Evaluate".uppercased()
    public static let tryAgain = "try again".uppercased()
    public static let next = "next".uppercased()
    public static let showScore = "show".uppercased()
}

public struct TabText {

}

public struct AppURL {
    public static let gradientGame = URL(string: "https://apps.apple.com/app/id1479784361")!
    public static let chromaGame = URL(string: "https://apps.apple.com/app/id1500196580")!
}

public struct LinkText {
    public static let creatorTwitterApp = "twitter://user?screen_name=rudrankriyam"
    public static let creatorTwitterWeb = "https://www.twitter.com/rudrankriyam"
    public static let creatorMail = "rudrankriyam@gmail.com"
    public static let chromaTwitterApp = "twitter://user?screen_name=chromagame_"
    public static let chromaTwitterWeb = "https://www.twitter.com/chromagame_"
    public static let gradientTwitterApp = "twitter://user?screen_name=gradientsgame"
    public static let gradientTwitterWeb = "https://www.twitter.com/gradientsgame"
}

public enum TabItemType: Int, CaseIterable {
    case rgb = 1
    case hsb
    case cmyk
    case radient
    case more
    
    public var name: String {
        String(describing: self).uppercased()
    }
    
    public var image: String {
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
