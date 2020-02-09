//
//  AuthView.swift
//  RomePizza
//
//  Created by Daval Cato on 2/9/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            Text("Sign in view")
            
        }
        
    }
}

struct AuthView: View {
    var body: some View {
        NavigationView {
            SignInView()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView().environmentObject(SessionStore())
    }
}
