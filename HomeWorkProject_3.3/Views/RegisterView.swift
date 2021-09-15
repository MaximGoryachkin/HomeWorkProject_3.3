//
//  RegisterView.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 15.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 50)
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .padding()
                    .foregroundColor(changeColor().0)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(changeColor().1)
        }
        
    }
    
    private func changeColor() -> (Color, Bool) {
        if name.count < 3 {
            return (.gray, true)
        } else {
            return (.green, false)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
