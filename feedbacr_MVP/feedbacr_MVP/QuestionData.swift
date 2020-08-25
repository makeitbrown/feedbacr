//
//  QuestionData.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/25/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import Foundation

// finish putting in the brains of SurveyHelper
//      Finish nextQuestions func
//      Move loadQuestions func over to Router (nextViewCOntrollerType)(
//      Add an instance of questions array
struct SurveyHelper {
    static var questionIndex = 0
    static var currentQuestion = questions[questionIndex]
    static var isLastQuestion: Bool {
        return questionIndex == questions.count - 1
    }
    
    static func nextQuestion() -> Question? {
       return nil
    }
}
//var questionIndex = 0

struct Question {
    
    enum ResponseType {
        case text
        case multipleChoice
        case multiSelection
    }
    
    var questionText: String
    var type: ResponseType
    var responseAnswers: [String]
    
}
