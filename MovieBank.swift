//
//  MovieBank.swift
//  ScreenCapQuiz
//
//  Created by Magnus Holm on 04/09/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import Foundation

class MovieBank {
    
    var movieScreens = [MoviesScreen]()
    
    init() {
        movieScreens.append(MoviesScreen(movie1: Movie(name: "Pulp Fiction", correctAnswer: true),
                                        movie2: Movie(name: "The Prestige", correctAnswer: false),
                                        movie3: Movie(name: "Leon", correctAnswer: false),
                                        movie4: Movie(name: "Goodfellas", correctAnswer: false)))
        
        movieScreens.append(MoviesScreen(movie1: Movie(name: "Pulp Fiction", correctAnswer: false),
                                         movie2: Movie(name: "The Prestige", correctAnswer: false),
                                         movie3: Movie(name: "Leon", correctAnswer: true),
                                         movie4: Movie(name: "Goodfellas", correctAnswer: false)))
        
        movieScreens.append(MoviesScreen(movie1: Movie(name: "Pulp Fiction", correctAnswer: false),
                                         movie2: Movie(name: "The Prestige", correctAnswer: false),
                                         movie3: Movie(name: "Leon", correctAnswer: false),
                                         movie4: Movie(name: "Goodfellas", correctAnswer: true)))
        
        movieScreens.append(MoviesScreen(movie1: Movie(name: "Pulp Fiction", correctAnswer: false),
                                         movie2: Movie(name: "The Prestige", correctAnswer: true),
                                         movie3: Movie(name: "Leon", correctAnswer: false),
                                         movie4: Movie(name: "Goodfellas", correctAnswer: false)))
        
    }
}
