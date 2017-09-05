//
//  ViewController.swift
//  ScreenCapQuiz
//
//  Created by Magnus Holm on 01/09/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let movieBank = MovieBank()
    
    var movieScreenNumber = 0
    var pickedAnswer: String?
    var screenshotNumber = 0
    

    @IBOutlet weak var screenshot: UIImageView!
    
    
    @IBOutlet weak var movie1: UIButton!
    
    @IBOutlet weak var movie2: UIButton!
    
    @IBOutlet weak var movie3: UIButton!
    
    @IBOutlet weak var movie4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenshot.image = #imageLiteral(resourceName: "pulpFiction")
        nextMovieScreen()
    }
    
    @IBAction func answerPressed(sender: AnyObject) {
        pickedAnswer = sender.text
    }
    
    
    func nextMovieScreen() {
        let allMovieScreens = movieBank.movieScreens
        let currentMovieScreen = movieBank.movieScreens[screenshotNumber]
        
        if screenshotNumber < allMovieScreens.count {
            movie1.setTitle(currentMovieScreen.movie1.name, for: [])
            movie2.setTitle(currentMovieScreen.movie2.name, for: [])
            movie3.setTitle(currentMovieScreen.movie3.name, for: [])
            movie4.setTitle(currentMovieScreen.movie4.name, for: [])
        } else {
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all the screenshots!", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        var correctAnswer: String
        
        let movieScreen = movieBank.movieScreens[screenshotNumber]
        
        if movieScreen.movie1.correctAnswer {
            correctAnswer = movieScreen.movie1.name
        } else if movieScreen.movie2.correctAnswer {
            correctAnswer = movieScreen.movie2.name
        } else if movieScreen.movie3.correctAnswer {
            correctAnswer = movieScreen.movie3.name
        } else {
            correctAnswer = movieScreen.movie4.name
        }
        
        if correctAnswer == pickedAnswer {
            print("Correct")
        } else {
            print("Wrong")
        }
        
    }
    
    
    
    func nextScreenshot() {
        
    }
}

