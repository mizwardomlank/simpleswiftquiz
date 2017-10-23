//
//  ViewController.swift
//  SimpleQuiz
//
//  Created by Miftah Mizwar on 10/23/17.
//  Copyright © 2017 Miftah Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UIQuestionLabel: UILabel!
    
    @IBOutlet weak var UIAnswerLabel: UILabel!
    
    var indexOfQuestion: Int = 0
    
    let questions: [String] = [
        "Who am i? I'm yellow and love laughing",
        "What is Capital of Jakarta?",
        "Where am i?"
    ]
    
    let answers: [String] = [
        "Spongebob S.",
        "J",
        "beside am"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIQuestionLabel.text = questions[indexOfQuestion]
        UIAnswerLabel.text = "?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextButtonClicked(_ sender: UIButton) {
        indexOfQuestion = indexOfQuestion + 1
        if (indexOfQuestion == questions.count){
            indexOfQuestion = 0
        }
        
        let question = questions[indexOfQuestion]
        UIQuestionLabel.text = question
        UIAnswerLabel.text = "?"
        
    }
    
    @IBAction func ShowButtonClicked(_ sender: Any) {
        UIAnswerLabel.text = answers[indexOfQuestion]
    }
    
}

