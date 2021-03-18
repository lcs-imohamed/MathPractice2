//
//  ContentView.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-10.
//

import SwiftUI

struct ContentView: View {
    
    //Controls whether question1 is showing
    @State private var showingQuestion = false
    
    
    var body: some View {
        
        VStack {
            Text("Math Practice App")
                .padding(50)
                .font(.title)
                
            Text("Practice Multiplication")
                .padding()
            Button("Go") {
                //Show question1 when user presses go
                showingQuestion = true
            }
            //View modifier
            .sheet(isPresented: $showingQuestion) {
                QuestionView(showing: $showingQuestion)
            }

        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
       
    }
}
