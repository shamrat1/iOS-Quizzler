//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let questions = QuestionBank()
    var pickedAnswer : Bool?
    var step = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nextQuestion()
        
    }

    @IBAction func ansBtn(_ sender: UIButton) {
        if sender.tag == 1{
            pickedAnswer = true
        }else{
            pickedAnswer = false
        }
        checkAnswer()
        step += 1
        nextQuestion()
    }
    
    func checkAnswer(){
        if pickedAnswer == questions.list[step].answer {
            let alert = UIAlertController(title: "Good Job!", message: "Answer was right.", preferredStyle: .alert)
            present(alert, animated: true, completion: {
                self.dismiss(animated: true, completion: nil)
            })
        }else {
            let alert = UIAlertController(title: "Oopss!", message: "Answer was worng!", preferredStyle: .alert)
            present(alert, animated: true, completion: {
                self.dismiss(animated: true, completion: nil)
            })
        }
        
    }
    
    func nextQuestion(){
        updateUI()
        if step < questions.list.count {
            questionLabel.text = questions.list[step].question
        }else {
            restart()
        }
    }
    
    func restart(){
        self.dismiss(animated: true, completion: {
            let alert = UIAlertController(title: "No questions left.", message: "Do you want to restart ?", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.step = 0
                self.nextQuestion()
            }))
            self.present(alert, animated: true, completion: nil)
        })
        
    }
    func updateUI(){
        progressBar.progress = Float(step) / Float(questions.list.count)
    }
    
    
}

