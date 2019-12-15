//
//  MenuListView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/4/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    var menuList = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(text: "Menu")
            List(menuList) { item in
                MenuRowView()
                Text(item.name)
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
        
    }
}

