//
//  SubtractionQuestionView.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-18.
//

import SwiftUI



struct SubtractionQuestionView: View {
    
    @ObservedObject var store: ResultsStore
    
    
    //MARK: Properties
    
    //Create variable to store user guess
    
    @State var guess: String = ""
    
    
    //Create variables for different parts of the subtraction question
    @State var minuend: Int = Int.random(in: 0...12)
    @State var subtrahend: Int = Int.random(in: 0...12)
    @State var difference: String = ""
    
    
    //Whether to show this view or not
    @Binding var showing: Bool
    
    var actualAnswer: Int {
        return minuend - subtrahend
    }
    var guessAsInteger: Int {
        //When can't convert to an integer, returns 0
        return Int(guess) ?? 0
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Question: \(minuend) - \(subtrahend) = ?")
                    .padding()
                Text("Result: \(difference)")
                    .padding()
                Text("Guess: \(guessAsInteger)")
                    .padding()
                TextField("Enter Guess Here", text: $guess )
                    
                
                
                //Add button to submit user guess
                Button("Submit Guess") {
                    //Check the guess
                    if guessAsInteger == actualAnswer {
                        difference = "correct"
                        
                    }else{
                        difference = "incorrect"
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
    if difference == "correct" {
        store.score += 1
    }
    //Dismiss this view
    showing = false
    
    
}


struct SubtractionQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        SubtractionQuestionView(store: testStore, showing: .constant(false))
    }
}
}
