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
    
    @State var multiplier: Int = Int.random(in: 0...12)
    @State var multiplicand: Int = Int.random(in: 0...12)
    @State var result: String = ""
    var actualAnswer: Int {
        return multiplier * multiplicand
    }
    var guessAsInteger: Int {
        //When can't convert to an integer, returns 0
        return Int(guess) ?? 0
    }
    
    
    var body: some View {
        
        VStack {
            Text("Question: \(multiplier) x \(multiplicand) = ?")
                .padding()
            Text("Result: \(result)")
                .padding()
            Text("Guess: \(guessAsInteger)")
                .padding()
            TextField("Enter Guess Here", text: $guess )
            
            //Add button to submit user guess
            Button("Submit Guess") {
                //Check the guess
                if guessAsInteger == actualAnswer {
                    result = "correct"
                    
                }else{
                    result = "incorrect"
                }
            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

