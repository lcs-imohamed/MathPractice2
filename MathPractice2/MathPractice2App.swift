//
//  MathPractice2App.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-10.
//

import SwiftUI

@main
struct MathPractice2App: App {
    
    @StateObject private var store = ResultsStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(store: store)
            }
            
            
        }
    }
}
