//
//  MultipleSelectionViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/21/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class MultipleSelectionViewController: UIViewController {
    
    //    MARK:- OUTLETS AND ACTIONS
    
    //    OUTLETS
    
    //    MAIN SURVEY LABEL
    @IBOutlet weak var mainSurveyLabel: UILabel!
    
    //    QUESTION LABEL
    @IBOutlet weak var questionsLabel: UILabel!
    
    //    MULTI ANSWER RESPONSE
    @IBOutlet weak var multiAnswerResponseStackView: UIStackView!
    @IBOutlet weak var multiResponse1: UIButton!
    @IBOutlet weak var multiResponse2: UIButton!
    @IBOutlet weak var multiResponse3: UIButton!
    @IBOutlet weak var multiResponse4: UIButton!
    @IBAction func multiResponseButtonTapped(_ sender: Any) {
    }
    
    //    SUBMIT AND NEXT BUTTON
    @IBOutlet weak var nextAndSubmitButton: UIButton!
    @IBAction func NASButtonTapped(_ sender: Any) {
        SurveyHelper.presentNextQuestion()
//        nextQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenButtons()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK:- FUNCTIONS
    
    func hiddenButtons(){
        
        multiResponse1.isHidden = true
        multiResponse2.isHidden = true
        multiResponse3.isHidden = true
        multiResponse4.isHidden = true
       
    }
    
    func updateUI() {
        let currentQuestion = questions[Question.questionIndex]
        let currentAnswers = currentQuestion.responseAnswers
        
        questionsLabel.text = currentQuestion.questionText
        
        let answerButtons = [multiResponse1, multiResponse2, multiResponse3, multiResponse4]
        var answerIndex = 0
        for answer in currentAnswers {
            
            let button = answerButtons[answerIndex]
            
            button?.isHidden = false
            button?.setTitle(answer, for: .normal)
            
            answerIndex += 1
        }
        
    }
    
    func nextQuestion() {
        
        Question.questionIndex += 1
        loadQuestion()
    }
    
    func loadQuestion() {
        let currentQuestion = questions[Question.questionIndex]
        
        switch currentQuestion.type {
        case .text:
            let textResponseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TextResponseViewController") as! TextResponseViewController
            navigationController?.pushViewController(textResponseVC, animated: true)
        case .multipleChoice:
            let multipleChoiceResponseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MultipleChoiceViewController") as! MultipleChoiceViewController
            navigationController?.pushViewController(multipleChoiceResponseVC, animated: true)
        case .multiSelection:
            let multipleSelectionResponseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MultipleSelectionViewController") as! MultipleSelectionViewController
            navigationController?.pushViewController(multipleSelectionResponseVC, animated: true)
        }
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
