//
//  Question1View.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-16.
//

import SwiftUI

struct QuestionView: View {
    
    @ObservedObject var store: ResultsStore
    
    //MARK: Properties
    
    //Create variable to store user guess
    
    @State var guess: String = ""
    
    
    //Create variables for different parts of the mulitplication question
    @State var multiplier: Int = Int.random(in: 0...12)
    @State var multiplicand: Int = Int.random(in: 0...12)
    @State var result: String = ""
    
    
    //Whether to show this view or not
    @Binding var showing: Bool
    
    var actualAnswer: Int {
        return multiplier * multiplicand
    }
    var guessAsInteger: Int {
        //When can't convert to an integer, returns 0
        return Int(guess) ?? 0
    }
    var body: some View {
        NavigationView {
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
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Close") {
                        closeWindow()
                    }
                }
            }
        }

    }
    
    func closeWindow() {
       
        //Check if answer is correct or not
        if result == "correct" {
            store.score += 1
        }
        //Dismiss this view
        showing = false
        
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(store: testStore, showing: .constant(true))
    }
}
