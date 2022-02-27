//
//  bestbooks_uzApp.swift
//  bestbooks.uz
//
//  Created by Anvarjon Khojimatov on 2022/02/16.
//

import SwiftUI
import Firebase

@main
struct bestbooks_uzApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
