//
//  ViewController.swift
//  ScreenCapQuiz
//
//  Created by Magnus Holm on 01/09/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allMovieScreens = MovieBank()
    
    var movieScreenNumber = 0
    var pickedAnswer: String?
    var screenshotNumber = 0
    
    
    @IBOutlet weak var screenshot: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenshot.image = #imageLiteral(resourceName: "pulpFiction")
    }
    
    @IBAction func answerPressed(sender: AnyObject) {
        
    }
    
    func checkAnswer() {
        var correctAnswer: String
        
        let movieScreen = allMovieScreens.movieScreens[screenshotNumber]
        
        if movieScreen.movie1.correctAnswer {
            correctAnswer = movieScreen.movie1.name
        } else if movieScreen.movie2.correctAnswer {
            correctAnswer = movieScreen.movie2.name
        } else if movieScreen.movie3.correctAnswer {
            correctAnswer = movieScreen.movie3.name
        } else {
            correctAnswer = movieScreen.movie4.name
        }
        
    }
    
    
    
    func nextScreenshot() {
        
    }
}

