//
//  SimpleState.swift
//  StatesMngt
//
//  Created by Apple on 13/04/23.
//

import SwiftUI

struct SimpleState: View {
    @State private var backgroundImage: String = Assets.rain
    @State private var toggleButtonTitle: String = "Go Winter"

    var body: some View {
        VStack(spacing: 24) {
            Image(backgroundImage)
                .resizable()
                .frame(width: 300, height: 400)
                .cornerRadius(32)
            TimerView()
            Button { switchWeather() } label: {
                Text(toggleButtonTitle)
            }
            .modifier(ButtonModifier())
        }
    }
    
    private func switchWeather() {
        if backgroundImage == Assets.rain {
            backgroundImage = Assets.winter
            toggleButtonTitle = "Go Rain"
        } else {
            backgroundImage = Assets.rain
            toggleButtonTitle = "Go Winter"
        }
    }
}

struct SimpleState_Previews: PreviewProvider {
    static var previews: some View {
        SimpleState()
    }
}
