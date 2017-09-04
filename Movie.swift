//
//  Movie.swift
//  ScreenCapQuiz
//
//  Created by Magnus Holm on 04/09/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import Foundation

class Movie {
    
    let name: String
    let correctAnswer: Bool
    
    init(name: String, correctAnswer: Bool) {
        self.name = name
        self.correctAnswer = correctAnswer
    }
}
