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
    
    
    
    func nextScreenshot() {
        
    }
}

