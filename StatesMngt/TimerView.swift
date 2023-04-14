//
//  TimerView.swift
//  StatesMngt
//
//  Created by Apple on 14/04/23.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var viewModel = TimerViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 32)
                .fill(Color.red)
                .frame(height: 100)
                .padding()
            VStack(spacing: 16) {
                Text("Ends In")
                    .font(.title2)
                HStack(alignment: .center, spacing:0) {
                    Text("\(viewModel.remainingTime.0)")
                    Text(":")
                    Text("\(viewModel.remainingTime.1)")
                    Text(":")
                    Text("\(viewModel.remainingTime.2)")
                }
                .font(.largeTitle)
                .fontWeight(.black)
            }
            .foregroundColor(.white)
        }
        .onAppear() { viewModel.start25MinCoundownTimer() }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
