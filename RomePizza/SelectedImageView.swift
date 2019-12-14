//
//  SelectedImageView.swift
//  RomePizza
//
//  Created by Daval Cato on 12/14/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import SwiftUI

struct SelectedImageView: View {
    
    var image:String
    var body: some View {
        Image(image)
        .resizable()
            .scaledToFit()
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image:"1_100w")
    }
}
