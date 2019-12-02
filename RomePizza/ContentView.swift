//
//  ContentView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/1/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var pizzas:Int
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pizzas: 5)
    }
}
