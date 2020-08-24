//
//  MultipleChoiceViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/21/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class MultipleChoiceViewController: UIViewController {
    
//    MARK:- OUTLETS AND ACTIONS

//    OUTLETS
    
    //    MAIN SURVEY LABEL
        @IBOutlet weak var mainSurveyLabel: UILabel!
        
    //    QUESTION LABEL
        @IBOutlet weak var questionsLabel: UILabel!

    //    SINGLE ANSWER RESPONSE
        @IBOutlet weak var singleResponseStackView: UIStackView!
        @IBOutlet weak var singleResponse1: UIButton!
        @IBOutlet weak var singleResponse2: UIButton!
        @IBOutlet weak var singleResponse3: UIButton!
    @IBOutlet weak var singleResponse4: UIButton!
    @IBOutlet weak var singleResponse5: UIButton!
        @IBAction func singleResponseButtonTapped(_ sender: Any) {
            
        }
    
    //    SUBMIT AND NEXT BUTTON
        @IBOutlet weak var nextAndSubmitButton: UIButton!
        @IBAction func NASButtonTapped(_ sender: Any) {
            
            nextQuesion()
            
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenButtons()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK:- FUNCTIONS
    
    func hiddenButtons(){
        
        singleResponse1.isHidden = true
        singleResponse2.isHidden = true
        singleResponse3.isHidden = true
        singleResponse4.isHidden = true
        singleResponse5.isHidden = true
        
    }
    
    func updateUI() {
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.responseAnswers
        
        questionsLabel.text = currentQuestion.questionText
        print(currentQuestion.questionText)
        var answerButtons = [singleResponse1, singleResponse2, singleResponse3, singleResponse4, singleResponse5]
        var answerIndex = 0
        for answer in currentAnswers {
            
            let button = answerButtons[answerIndex]
            
            button?.isHidden = false
            button?.setTitle(answer.answerText, for: .normal)
            
            answerIndex += 1
        }
//        singleResponse1.setTitle("\(currentQuestion.responseAnswers[0].answerText)", for: .normal)
//        singleResponse2.setTitle("\(currentQuestion.responseAnswers[1].answerText)", for: .normal)
//        singleResponse3.setTitle("\(currentQuestion.responseAnswers[2].answerText)", for: .normal)
//        singleResponse4.setTitle("\(currentQuestion.responseAnswers[3].answerText)", for: .normal)
//        singleResponse5.setTitle("\(currentQuestion.responseAnswers[4].answerText)", for: .normal)
//        if on last question update next label
    
    }
    
    func nextQuesion() {
        
        updateUI()
        if questionIndex < questions.count - 1 {
            loadQuestion()
            questionIndex += 1
        } else {
            nextAndSubmitButton.setTitle("Submit", for: .normal)
            
            if nextAndSubmitButton.currentTitle == "Submit" {
                
                let surveyEndPageVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SurveyEndPageViewController") as! SurveyEndPageViewController
                navigationController?.pushViewController(surveyEndPageVC, animated: true)
            } else {
                print(Error.self)
            }
            
    }
    
    
    }
    
    func loadQuestion() {
        let currentQuestion = questions[questionIndex]
        
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
