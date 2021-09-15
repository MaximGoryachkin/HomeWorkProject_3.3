//
//  TimeCounter.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 14.09.2021.
//

import Combine
import Foundation

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    
    var counter = 3
    var timer: Timer?
    var buttonTitile = "Start"
    var disable = false
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(updateCounter),
                                         userInfo: nil,
                                         repeats: true)
        }
        buttonDidTapped()
    }
    
    @objc private func updateCounter() {
        if counter > 1 {
            counter -= 1
        } else {
            counter -= 1
            killTimer()
            buttonTitile = "Reset"
            disable.toggle()
        }
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTapped() {
        if buttonTitile == "Reset" {
            counter = 3
            buttonTitile = "Start"
        } else {
            buttonTitile = "Wait..."
            disable.toggle()
        }
        objectWillChange.send(self)
    }
    
}
