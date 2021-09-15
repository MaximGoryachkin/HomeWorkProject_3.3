//
//  HomeWorkProject_3_3App.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 14.09.2021.
//

import SwiftUI

@main
struct HomeWorkProject_3_3App: App {
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
