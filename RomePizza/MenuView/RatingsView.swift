//
//  RatingsView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/4/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct RatingsView: View {
    var body: some View {
        HStack {
            ForEach(0..<4){item in
                Image("Pizza Slice")
                
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}