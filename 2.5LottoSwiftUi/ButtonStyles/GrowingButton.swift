//
//  GrowingButtonStyle.swift
//  2.5LottoSwiftUi
//
//  Created by Till Hemmerich on 22.12.22.
//

import Foundation
import SwiftUI
extension ContentView{
    struct GrowingButton: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        }
    }
    
}
