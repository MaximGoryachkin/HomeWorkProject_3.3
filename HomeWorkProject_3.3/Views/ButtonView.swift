//
//  ButtonView.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 14.09.2021.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    let backgroung: Color
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitile)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(backgroung)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
