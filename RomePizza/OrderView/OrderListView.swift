//
//  OrderListView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/4/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var orderModel:OrderModel
    var body: some View {
        VStack {
            Spacer()
            
            List{
                Section(
                    header: ListHeaderView(orderModel: self.orderModel,text: "Your Order")
                    
                ){  ForEach(orderModel.orders){item in
                        OrderRowView(orderItem:item)
                }
                .onDelete(perform: delete)
                }
            }
        }
    }
    func delete(at offsets:IndexSet){
        
    }
    
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel:OrderModel())
        }
    }


