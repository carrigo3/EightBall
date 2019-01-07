//
//  ViewController.swift
//  EightBall
//
//  Created by Cameron Arrigo on 1/5/19.
//  Copyright © 2019 Cameron Arrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// *** REMEMBER TO ASK QUESTION ABOUT THE IMPORTANCE OF SCOPE HERE
    var index = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func askButton(_ sender: UIButton) {
        var responses = ["It is certain.", "It is decidedly so.", "Without a doubt.", "Yes - definitely.", "You may rely on it.", "As I see it, yes.", "Most likely.", "Outlook good.","Yes.", "Signs point to yes.", "Reply haze, try again.", "Ask again later.", "Better not tell you now.", "Cannot preict now.", "Concentrate and ask again.", "Don't count on it.", "My reply is no.", "My sources say no.", "Outlook not so good.", "Very doubtful."]
        var newIndex = 0
        repeat{
            newIndex = Int.random(in: 0..<responses.count)
        } while index == newIndex
        index = newIndex
        answerLabel.text = responses[index]
        
    
    }
    
    
    
    
}

