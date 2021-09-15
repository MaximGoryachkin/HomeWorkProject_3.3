//
//  ContentView.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 14.09.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @AppStorage("name") private var name = ""
    
    var body: some View {
        VStack {
            Text("Hi, \(name)")
                .font(.largeTitle)
                .offset(x: 0, y: 50)
            Spacer()
            Text("\(timer.counter)")
                .font(.largeTitle)
            Spacer()
            ButtonView(backgroung: .red,
                       title: timer.buttonTitile,
                       action: timer.startTimer)
                .disabled(timer.disable)
            Spacer()
            ButtonView(backgroung: .blue,
                       title: "Log Out",
                       action: removeUser)
            Spacer()
        }
        .padding()
    }
    
    private func removeUser() {
        name = ""
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
