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
            ZStack{
                Image("Surf Board")
                .resizable()
                .scaledToFit()
                Text("Rome Pizza Company")
                .font(.title)
            }
                        Text("Order Pizza")
                .font(.largeTitle)
            
            MenuListView()
            OrderListView()
            Spacer()
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        ContentView()
        ContentView()
            .colorScheme(.dark)
            .background(Color.black)
            .previewDevice("iPad Pro (9.7-inch)")
            
        }
    }
}
