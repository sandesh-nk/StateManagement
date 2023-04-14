//
//  ButtonModifier.swift
//  StatesMngt
//
//  Created by Apple on 13/04/23.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: 150)
            .background { Color.green }
            .clipShape(Capsule())
            .foregroundColor(.white)
            .font(.title2)
    }
}
