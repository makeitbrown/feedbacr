//
//  TextResponseViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/21/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class TextResponseViewController: UIViewController, UITextViewDelegate {
    
    //    MARK:- Outlets and Actions
    
    //    OUTLETS
    
    //    MAIN SURVEY LABEL
    @IBOutlet weak var mainSurveyLabel: UILabel!
    
    //    QUESTION LABEL
    @IBOutlet weak var questionsLabel: UILabel!
    
    //    TEXT RESPONSE
    @IBOutlet weak var textResponseTextView: UITextView!
    
    
    //    SUBMIT AND NEXT BUTTON
    @IBOutlet weak var nextAndSubmitButton: UIButton!
    @IBAction func NASButtonTapped(_ sender: Any) {
        SurveyHelper.presentNextQuestion(answer: textResponseTextView.text)
    }
    
    //    MARK:- VARIABLES AND CONSTANTS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        self.textResponseTextView.delegate = self
        Router.navigationController = self.navigationController
    }
    
    // MARK:- FUNCTIONS
    
    func updateUI() {
        let currentQuestion = questions[Question.questionIndex]
        
        questionsLabel.text = currentQuestion.questionText
        
        textResponseTextView.layer.borderWidth = 2
        textResponseTextView.layer.borderColor = UIColor.white.cgColor
    }
    
    //    MARK:- TextViewDelegate
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
    //        textResponseTextView.resignFirstResponder()
    //        return (true)
    //    }
}
