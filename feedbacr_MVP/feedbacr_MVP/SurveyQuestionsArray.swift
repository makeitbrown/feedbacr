//
//  SurveyQuestionsArray.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/3/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import Foundation

var questions: [Question] = [
    
    Question(questionText: "What is your Company Name?", type: .text, responseAnswers: [""]),
    Question(questionText: "What is Your First Name?", type: .text, responseAnswers: [""]),
    Question(questionText: "How was the presentation of the resume?", type: .multiSelection, responseAnswers: ["Too short.", "Too much detail.", "No organization.", "Had miss spelled words."]),
    Question(questionText: "Was the interviewee on time?", type: .multipleChoice, responseAnswers: ["Yes", "No"]),
    Question(questionText: "Did the interviewee answer the questions fully?", type: .multipleChoice, responseAnswers: ["Yes", "No", "Somewhat"]),
    Question(questionText: "Did they ask appropriate questions?", type: .multipleChoice, responseAnswers: ["Yes", "No", "Somewhat"]),
    Question(questionText: "Did the interviewee give thought provoking answers?", type: .multipleChoice, responseAnswers: ["Yes, when the question needed it.", "No, not really."]),
    Question(questionText: "How was the demeanor/attitude of the interviewee during the interview?", type: .multipleChoice, responseAnswers: ["They were confident.", "They seemed nervous.", "They were distracted during the interview."]),
    Question(questionText: "How well did the interviewee maintain eye contact?", type: .multipleChoice, responseAnswers: ["1 - Very little eye contact.", "2", "3", "4", "5 - Excellent eye contant."]),
    Question(questionText: "What is one thing that the interviewee could have done better at?", type: .text, responseAnswers: [""]),
    Question(questionText: "What is the second thing that the interviewee could have done better?", type: .text, responseAnswers: [""]),
    Question(questionText: "On a scale of 1-5, how was the overall interview?", type: .multipleChoice, responseAnswers: ["1 - Terrible", "2", "3", "4", "5 - Excellent"])
]

var interviewResults: [String : String] = [
    "What is your Company Name?": "",
    "What is Your First Name?": "",
    "How was the presentation of the resume?":"",
    "Was the interviewee on time?":"",
    "Did the interviewee answer the questions fully?":"",
    "Did they ask appropriate questions?":"",
    "Did the interviewee give thought provoking answers?":"",
    "How was the demeanor/attitude of the interviewee during the interview?":"",
    "How well did the interviewee maintain eye contact?":"",
    "What is one thing that the interviewee could have done better at?":"",
    "What is the second thing that the interviewee could have done better?":"",
    "On a scale of 1-5, how was the overall interview?":""
]
