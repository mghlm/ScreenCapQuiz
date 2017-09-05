//
//  ViewController.swift
//  ScreenCapQuiz
//
//  Created by Magnus Holm on 01/09/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var screenshot: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenshot.image = #imageLiteral(resourceName: "pulpFiction")
    }
}

