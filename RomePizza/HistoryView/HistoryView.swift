//
//  HistoryView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/6/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            
            ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image:"1_100w")
                .padding(5)
            HistoryListView()
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            HistoryView()
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
