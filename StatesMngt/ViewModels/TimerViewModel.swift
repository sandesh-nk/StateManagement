//
//  TimerViewModel.swift
//  StatesMngt
//
//  Created by Apple on 14/04/23.
//

import SwiftUI

class TimerViewModel: ObservableObject {
    
    @Published var remainingTime: (hours: Int, mins: Int, second: Int) = (0,25,0)
    private var totalTime:Int = 25*60
    private var countdownTimer: Timer!
    
    func start25MinCoundownTimer() {
        countdownTimer = Timer.scheduledTimer(timeInterval: 1,
                                              target: self,
                                              selector: #selector(updateTimer),
                                              userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if totalTime > 0 {
            totalTime -= 1
            secondsToHoursMinutesSeconds(seconds: totalTime)
        } else {
            endTimer()
        }
    }
    
    private func endTimer() {
        countdownTimer.invalidate()
    }
    
    private func secondsToHoursMinutesSeconds (seconds : Int){
        let hours = seconds / 3600
        let minutes = (seconds % 3600) / 60
        let seconds = (seconds % 3600) % 60
        remainingTime = (hours, minutes, seconds)
    }
}
