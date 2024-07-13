//
//  ResultRow.swift
//  RRColorKit
//
//  Created by Rudrank Riyam on 12/07/21.
//

import SwiftUI

public struct ResultRow<T: ResultTypeProtocol>: View {
    var type: T
    var value: Double
    var step: Double
    
    public init(_ type: T, _ value: Double, _ step: Double = 255.0) {
        self.type = type
        self.value = value
        self.step = step
    }
    
    public var body: some View {
        Text(type.symbol + "\(Int(value * step))")
          //  .blurredBackgroundText()
            .foregroundColor(.red)
    }
}

struct ResultRow_Previews: PreviewProvider {
    static var previews: some View {
        ResultRow(RGBResultType.red, 0.5)
    }
}
