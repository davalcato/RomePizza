//
//  ContentView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/1/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Rome Pizza Company")
            Image("Surf Board")
                .resizable()    
                .scaledToFit()
            Text("Order Pizza")
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
