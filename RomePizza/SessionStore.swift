//
//  SessionStore.swift
//  RomePizza
//
//  Created by Daval Cato on 2/9/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI
import Firebase
import Combine


class SessionStore: ObservableObject {
    var didChange = PassthroughSubject<SessionStore, Never>()
    @Published var session: User? {didSet {self.didChange.send(self) }}
    var handle: AuthStateDidChangeListenerHandle?
  
}

struct User {
    var uid: String
    var email: String?
    
    init(uid: String, email: String?) {
        self.uid = uid
        self.email = email
    }
}
