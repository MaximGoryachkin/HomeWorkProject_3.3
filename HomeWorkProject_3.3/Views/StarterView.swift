//
//  StarterView.swift
//  HomeWorkProject_3.3
//
//  Created by Максим on 15.09.2021.
//

import SwiftUI

struct StarterView: View {
    @AppStorage("name") private var name = ""
    
    var body: some View {
        Group {
            if name.count != 0 {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
