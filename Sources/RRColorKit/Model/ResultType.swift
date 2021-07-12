//
//  ResultType.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 12/07/21.
//

import Foundation

public enum RGBResultType: String, ResultTypeProtocol {
    case red
    case green
    case blue
    
    public var symbol: String {
        self.rawValue.symbol
    }
}

public enum HSBResultType: String, ResultTypeProtocol {
    case hue
    case saturation
    case brightness
    
    public var symbol: String {
        self.rawValue.symbol
    }
}

public enum CMYKResultType: String, ResultTypeProtocol {
    case cyan
    case magenta
    case yellow
    case black
    
    public var symbol: String {
        switch self {
            case .black:
                return "K: "
                
            default: return self.rawValue.symbol
        }
    }
}
