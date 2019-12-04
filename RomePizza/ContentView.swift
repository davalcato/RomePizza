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
                .font(.title)
            Image("Surf Board")
                .resizable()    
                .scaledToFit()
            Text("Order Pizza")
                .font(.largeTitle)
            Spacer()
            HStack {
                Image("1_100w")
                Text("Rome Chicken Pizza")
            }
            Spacer()
            Text("Your Order")
            HStack {
                Text("Your order item here")
                Spacer()
                Text("$0.00")
               
            }
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
