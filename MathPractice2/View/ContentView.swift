//
//  ContentView.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-10.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: ResultsStore
    
    //Controls whether multiplication question is showing
    @State private var showingMultiplicationQuestion = false
    
    //Controls whether subtraction question is showing
    @State private var showingSubtractionQuestion = false
    
    
    var body: some View {
        
        VStack {
            Text("Math Practice App")
                .padding(50)
                .font(.title)
            
            Text("Current score: \(store.score)")
                
            Button("Practice Subtraction") {
                //show subtraction questions when pressed
                showingSubtractionQuestion = true
            }
            
            //View modifier to show subtraction questions
           
            .sheet(isPresented: $showingSubtractionQuestion) {
                SubtractionQuestionView(store: store, showing: $showingSubtractionQuestion)
            }
            
            Button("Practice Multiplication") {
                //Show multiplication questions when pressed
                showingMultiplicationQuestion = true
            }
            //View modifier to show multiplicationquestion
            .sheet(isPresented: $showingMultiplicationQuestion) {
                MultiplicationQuestionView(store: store, showing: $showingMultiplicationQuestion)
            }

        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
       
    }
}

