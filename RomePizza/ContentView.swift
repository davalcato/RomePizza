//
//  ContentView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/1/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var session: SessionStore
    @ObservedObject var orderModel:OrderModel
    @State var isMenuDisplayed:Bool = true
    
    
    var body: some View {
        
        VStack {
            
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action:{self.isMenuDisplayed.toggle()}){
                PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
            Spacer()
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            .animation(.spring())
//            Spacer()
        }
//        .animation(.spring())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
        ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
            .colorScheme(.dark)
            .background(Color.black)
            .previewDevice("iPad Pro (9.7-inch)")
            
        }
    }
}
