//
//  ContentView.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-10.
//

import SwiftUI

struct ContentView: View {
    
    //Create variable to store user guess
    @State var guess: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Guess")
            TextField("Enter Guess Here", text: $guess )
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
