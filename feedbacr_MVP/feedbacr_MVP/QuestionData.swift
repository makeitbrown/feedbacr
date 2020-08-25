//
//  QuestionData.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/3/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import Foundation
// Delete ResponseAnswers
// Change an Array of Strings

struct ResponseAnswers {
    var answerText: String
}

var questions: [Question] = [
    
    Question(questionText: "What is your Company Name?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "What is Your First Name?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "How was the presentation of the resume?", type: .multiSelection, responseAnswers: [ResponseAnswers(answerText: "Too short."), ResponseAnswers(answerText: "Too much detail."), ResponseAnswers(answerText: "No organization."), ResponseAnswers(answerText: "Had miss spelled words.")]),
    Question(questionText: "Was the interviewee on time?", type: .multipleChoice, responseAnswers: [ResponseAnswers(answerText: "Yes"), ResponseAnswers(answerText: "No")]),
    Question(questionText: "Did the interviewee answer the questions fully?", type: .multipleChoice, responseAnswers: [ResponseAnswers(answerText: "Yes"), ResponseAnswers(answerText: "No"), ResponseAnswers(answerText: "Somewhat")]),
    Question(questionText: "Did they ask appropriate questions?", type: .multipleChoice, responseAnswers: [ResponseAnswers(answerText: "Yes"), ResponseAnswers(answerText: "No"), ResponseAnswers(answerText: "Somewhat")]),
    Question(questionText: "Did the interviewee give thought provoking answers?", type: .multipleChoice, responseAnswers: [ResponseAnswers(answerText: "Yes, when the question needed it."), ResponseAnswers(answerText: "No, not really.")]),
    Question(questionText: "How was the demeanor/attitude of the interviewee during the interview?", type: .multipleChoice, responseAnswers: [ResponseAnswers(answerText: "They were confident."), ResponseAnswers(answerText: "They seemed nervous."), ResponseAnswers(answerText: "They were distracted during the interview.")]),
    Question(questionText: "How well did the interviewee maintain eye contact?", type: .multipleChoice, responseAnswers: [ResponseAnswers(answerText: "1 - Very little eye contact."), ResponseAnswers(answerText: "2"), ResponseAnswers(answerText: "3"), ResponseAnswers(answerText: "4"), ResponseAnswers(answerText: "5 - Excellent eye contant.")]),
    Question(questionText: "What is one thing that the interviewee could have done better at?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "What is the second thing that the interviewee could have done better?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "On a scale of 1-5, how was the overall interview?", type: .multipleChoice, responseAnswers: [ResponseAnswers(answerText: "1 - Terrible"), ResponseAnswers(answerText: "2"), ResponseAnswers(answerText: "3"), ResponseAnswers(answerText: "4"), ResponseAnswers(answerText: "5 - Excellent")])
]
