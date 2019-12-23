//
//  ConfirmView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/11/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    var menuID:Int
    @Binding var isPresented:Bool
    @ObservedObject var orderModel:OrderModel
    @Binding var quantity:Int
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID, quantity: quantity)
        isPresented = false
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                .padding(10)
            Divider()
            Text("Confirm your order of \(quantity) \(name) pizza")
                .font(.headline)
            Spacer()
            Button(action: addItem){
                Text("Add")
                    .font(.title)
                .padding()
                .background(Color("G4"))
                .cornerRadius(10)
            }.padding([.bottom])
        }
        .background(Color("G3"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, isPresented: .constant(true), orderModel: OrderModel(), quantity:.constant(1))
    }
}
