//
//  ResultsStore.swift
//  MathPractice2
//
//  Created by Mohamed, Ilana on 2021-03-18.
//

import Foundation
class ResultsStore: ObservableObject {
    @Published var score: Int = 0
}
var testStore = ResultsStore()

