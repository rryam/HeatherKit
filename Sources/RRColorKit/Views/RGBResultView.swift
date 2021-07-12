//
//  RGBResultView.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 12/07/21.
//

import SwiftUI
import RRComponentsKit

public struct RGBResultView: View {
    var color: RGBColorProtocol
    
    public init(_ color: RGBColorProtocol) {
        self.color = color
    }
    
    public var body: some View {
        AStack(type: .color) {
            ResultRow(RGBResultType.red, color.red)
            
            ResultRow(RGBResultType.green, color.green)
            
            ResultRow(RGBResultType.blue, color.blue)
        }
    }
}

public struct HSBResultView: View {
    var color: HSBColorProtocol
    
    public init(_ color: HSBColorProtocol) {
        self.color = color
    }
    
    public var body: some View {
        AStack(type: .color) {
            ResultRow(HSBResultType.hue, color.hue, 360)
            
            ResultRow(HSBResultType.saturation, color.saturation, 100)
            
            ResultRow(HSBResultType.brightness, color.brightness, 100)
        }
    }
}

public struct CMYKResultView: View {
    var color: CMYKColorProtocol
    
    public init(_ color: CMYKColorProtocol) {
        self.color = color
    }
    
    private let step = 100.0
    
    public var body: some View {
        AStack(type: .color) {
            ResultRow(CMYKResultType.cyan, color.cyan, step)
            
            ResultRow(CMYKResultType.magenta, color.magenta, step)

            ResultRow(CMYKResultType.yellow, color.yellow, step)
            
            ResultRow(CMYKResultType.black, color.black, step)
        }
    }
}

struct RGBResultView_Previews: PreviewProvider {
    static var previews: some View {
        RGBResultView(RGBRandomColor())
    }
}
