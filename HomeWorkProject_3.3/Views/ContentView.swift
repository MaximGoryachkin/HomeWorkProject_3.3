//
//  ContentView.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 14.09.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonView(timer: timer, backgroung: .red)
                .disabled(timer.disable)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
