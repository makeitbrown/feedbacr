//
//  QuestionData.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/3/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import Foundation

struct Question {
    var questionText: String
    var type: ResponseType
    var responseAnswers: [ResponseAnswers]
}

enum ResponseType {
    case text, single, multiple, ranged
}

struct ResponseAnswers {
    var answerText: String
}

var questions: [Question] = [

    Question(questionText: "What is your Company Name?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "What is Your First Name?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "How was the presentation of the resume?", type: .multiple, responseAnswers: [ResponseAnswers(answerText: "Too short."), ResponseAnswers(answerText: "Too much detail."), ResponseAnswers(answerText: "No organization."), ResponseAnswers(answerText: "Had miss spelled words.")]),
    Question(questionText: "Was the interviewee on time?", type: .single, responseAnswers: [ResponseAnswers(answerText: "Yes"), ResponseAnswers(answerText: "No")]),
    Question(questionText: "Did the interviewee answer the questions fully?", type: .single, responseAnswers: [ResponseAnswers(answerText: "Yes"), ResponseAnswers(answerText: "No"), ResponseAnswers(answerText: "Somewhat")]),
    Question(questionText: "Did they ask appropriate questions?", type: .single, responseAnswers: [ResponseAnswers(answerText: "Yes"), ResponseAnswers(answerText: "No"), ResponseAnswers(answerText: "Somewhat")]),
    Question(questionText: "Did the interviewee give thought provoking answers?", type: .single, responseAnswers: [ResponseAnswers(answerText: "Yes, when the question needed it."), ResponseAnswers(answerText: "No, not really.")]),
    Question(questionText: "How was the demeanor/attitude of the interviewee during the interview?", type: .single, responseAnswers: [ResponseAnswers(answerText: "The interviewee was confident."), ResponseAnswers(answerText: "The interviewee seemed nervous."), ResponseAnswers(answerText: "The interviewee was distracted during the interview.")]),
    Question(questionText: "How well did the interviewee maintain eye contact?", type: .ranged, responseAnswers: [ResponseAnswers(answerText: "The interviewee did not maintain eye contact."), ResponseAnswers(answerText: "The interviewee maintained eye contact through the whole interview.")]),
    Question(questionText: "What is one thing that the interviewee could have done better at?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "What is the second thing that the interviewee could have done better?", type: .text, responseAnswers: [ResponseAnswers(answerText: "")]),
    Question(questionText: "On a scale of 1-5, how was the overall interview?", type: .ranged, responseAnswers: [ResponseAnswers(answerText: "Terrible"), ResponseAnswers(answerText: "Excellent")])
]
