//
//  ContentView.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-10.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: ResultsStore
    
    //Controls whether question1 is showing
    @State private var showingQuestion = false
    
    
    var body: some View {
        
        VStack {
            Text("Math Practice App")
                .padding(50)
                .font(.title)
            
            Text("Current score: \(store.score)")
                
            Text("Practice Multiplication")
                .padding()
            Button("Go") {
                //Show question1 when user presses go
                showingQuestion = true
            }
            //View modifier
            .sheet(isPresented: $showingQuestion) {
                QuestionView(store: store, showing: $showingQuestion)
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

