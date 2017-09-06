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
    var score = 0
    var numberOfTotalScreenshots: Int?
    

    @IBOutlet weak var screenshot: UIImageView!
    
    
    @IBOutlet weak var movie1: UIButton!
    
    @IBOutlet weak var movie2: UIButton!
    
    @IBOutlet weak var movie3: UIButton!
    
    @IBOutlet weak var movie4: UIButton!
    
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressBarWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextMovieScreen()
    }
    
    @IBAction func answerPressed(sender: UIButton) {
        pickedAnswer = sender.title(for: [])
        checkAnswer()
        screenshotNumber += 1
        nextMovieScreen()
    }
    
    func updateUI() {
        
        if movieBank.movieScreens.count > 0 {
            numberOfTotalScreenshots = movieBank.movieScreens.count
        }
        scoreLabel.text = "Score: \(score)"
        progressBarWidthConstraint.constant = (view.frame.size.width / CGFloat(numberOfTotalScreenshots!)) * CGFloat(screenshotNumber + 1)

        
    }
    
    
    
    
    func nextMovieScreen() {
        let allMovieScreens = movieBank.movieScreens
        let currentMovieScreen = movieBank.movieScreens[screenshotNumber]
        
        if screenshotNumber < allMovieScreens.count {
            
            screenshot.image = movieBank.movieScreens[screenshotNumber].screenshot
            
            movie1.setTitle(currentMovieScreen.movie1.name, for: [])
            movie2.setTitle(currentMovieScreen.movie2.name, for: [])
            movie3.setTitle(currentMovieScreen.movie3.name, for: [])
            movie4.setTitle(currentMovieScreen.movie4.name, for: [])
            
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all the screenshots!", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        var correctAnswer = ""
        
        let movieScreen = movieBank.movieScreens[screenshotNumber]
        
        if movieScreen.movie1.correctAnswer {
            correctAnswer = movieScreen.movie1.name
        } else if movieScreen.movie2.correctAnswer {
            correctAnswer = movieScreen.movie2.name
        } else if movieScreen.movie3.correctAnswer {
            correctAnswer = movieScreen.movie3.name
        } else if movieScreen.movie4.correctAnswer {
            correctAnswer = movieScreen.movie4.name
        }
        
        if correctAnswer == pickedAnswer {
            print("You chose \(pickedAnswer!)")
            print("Correct")
            score += 1
        } else {
            print("You chose \(pickedAnswer!)")
            print("Wrong")
        }
        
    }
    
}

