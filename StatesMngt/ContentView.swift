//
//  ContentView.swift
//  StatesMngt
//
//  Created by Apple on 13/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       ProfileView()
            .environmentObject(ProfileViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
