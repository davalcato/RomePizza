//
//  HistoryDetailView.swift
//  HuliPizza
//
//  Created by Daval Cato on 12/18/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct HistoryDetailView: View {
    var historyItem:HistoryItem
    @Binding var imageID:Int
    var body: some View {
        imageID = historyItem.id
        return VStack {
            PageTitleView(title: historyItem.name)
            Text(historyItem.history)
                .frame(height:300)
            Spacer()
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem:HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
