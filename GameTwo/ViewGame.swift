//
//  ViewGame.swift
//  GameTwo
//
//  Created by Арсений Трошин on 09.08.2020.
//  Copyright © 2020 Арсений Трошин. All rights reserved.
//

import UIKit

class ViewGame: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var logoPicture: UIImageView!
    @IBOutlet weak var progress: UIView!
    
    // аутлеты для кнопок
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    
    let allQuetion = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func AnswerPressed(_ sender: UIButton) {
        if sender.tag == selectAnswer {
            print("correct")
            score += 1
        } else {
            print ("wrong")
        }
        
        questionNumber += 1
        updateQuestion()
        updateUI()
    }
    
    func updateQuestion() {
        if questionNumber <= allQuetion.list.count - 1 {
            logoPicture.image = UIImage(named:(allQuetion.list[questionNumber].questionImage))
            optionA.setTitle(allQuetion.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuetion.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuetion.list[questionNumber].optionC, for: UIControl.State.normal)
            selectAnswer = allQuetion.list[questionNumber].correctAnswer
        } else {
            let alert = UIAlertController(title: "Ну вот и все", message: "Игра окончена. Начать заново?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Заново", style: .default, handler: {ACTION in self.restartGame()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progress.frame.size.width = (view.frame.size.width / CGFloat(allQuetion.list.count)) * CGFloat(questionNumber + 1)
    }
    
    func restartGame() {
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
}
