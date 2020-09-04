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
    @IBAction func multiResponseButtonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected == true {
            selectedMultiResponse.append(sender.currentTitle!)
        } else {
            if let index = selectedMultiResponse.firstIndex(of: sender.currentTitle!) {
                selectedMultiResponse.remove(at: index)
            }
        }
    }
    
    //    SUBMIT AND NEXT BUTTON
    @IBOutlet weak var nextAndSubmitButton: UIButton!
    @IBAction func NASButtonTapped(_ sender: Any) {
        guard selectedMultiResponse.count > 0 else {return}
        SurveyHelper.presentNextQuestion(answer: selectedMultiResponse.joined(separator: ", "))
    }
    
    var selectedMultiResponse: [String] = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenButtons()
        updateUI()
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
}
