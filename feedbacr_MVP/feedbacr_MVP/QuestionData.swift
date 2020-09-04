//
//  QuestionData.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/25/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import Foundation
import UIKit

// finish putting in the brains of SurveyHelper
//      Finish nextQuestions func
//      Move loadQuestions func over to Router (nextViewCOntrollerType)(
//      Add an instance of questions array
struct SurveyHelper {
//    static var questionIndex = 0
    static var currentQuestion = questions[Question.questionIndex]
    static var isLastQuestion: Bool {
        return Question.questionIndex == questions.count - 1
    }
//    create a saveAnswer func to save answer then go into if else statement.
    static func presentNextQuestion(answer: String) {
        let currentQuestion = questions[Question.questionIndex]
        interviewResults[currentQuestion.questionText] = answer
        if isLastQuestion {
            Router.pushSurveyEndVC()
        } else {
            Question.questionIndex += 1
            Router.pushNextQuestion()
        }
    }
}

struct Router {
    static var navigationController: UINavigationController?
    
    static func pushSurveyEndVC() {
        let surveyEndPageVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SurveyEndPageViewController") as! SurveyEndPageViewController
        navigationController?.pushViewController(surveyEndPageVC, animated: true)
    }
    
    static func pushNextQuestion() {
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
}

func saveAnswer() {
//    grab currentQuestion
//    assign currentQuestion.question text and response to key and value
//    interviewResults[currentQuestion.questionText] = answer
}

struct Question {
    
    enum ResponseType {
        case text
        case multipleChoice
        case multiSelection
    }
    static var questionIndex = 0
    var questionText: String
    var type: ResponseType
    var responseAnswers: [String]
    
}
