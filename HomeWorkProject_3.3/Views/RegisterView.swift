//
//  RegisterView.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 15.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @State var text: String = ""
    @AppStorage("name") private var name = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 50)
                TextField("Enter your name...", text: $text)
                    .multilineTextAlignment(.center)
                Text("\(text.count)")
                    .frame(width: 20, height: 20)
                    .padding(10)
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
        if text.count < 3 {
            return (.gray, true)
        } else {
            return (.green, false)
        }
    }
    
    private func registerUser() {
        name = text
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(text: "")
    }
}
