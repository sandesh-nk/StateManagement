//
//  StateBinding.swift
//  StatesMngt
//
//  Created by Apple on 13/04/23.
//

import SwiftUI

struct StateBinding: View {
    @State private var backgroundImage: String = Assets.rain

    var body: some View {
        VStack(spacing: 24) {
            Image(backgroundImage)
                .resizable()
                .frame(width: 300, height: 500)
                .cornerRadius(32)
            WeatherSwitch(backgroundImagee: $backgroundImage)
        }
    }
}

struct WeatherSwitch: View {
    @Binding var backgroundImagee: String
    var body: some View {
        HStack {
            Button { backgroundImagee = Assets.rain } label: {
                Text("Go Rain")
            }
            .modifier(ButtonModifier())
            
            Button { backgroundImagee = Assets.winter } label: {
                Text("Go Winter")
            }
            .modifier(ButtonModifier())
        }
        .padding(.horizontal)
    }
}

struct StateBinding_Previews: PreviewProvider {
    static var previews: some View {
        StateBinding()
    }
}
