//
//  ContentView.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-10.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    //Create variable to store user guess
    
    @State var guess: String = ""
    
    //Create variables for different parts of the mulitplication question
    
    @State var multiplier: Int = 0
    @State var multiplicand: Int = 2
        
    var body: some View {
        
        VStack {
            Text("Question: \(multiplier) x \(multiplicand) = ?")
                .padding()
            Text("Result:")
                .padding()
            Text("Guess:")
                .padding()
            TextField("Enter Guess Here", text: $guess )
                
                //Add button to submit user guess
                //            Button("Submit Guess") {
                //                var guess
                //            }
                //        }
                .padding()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
