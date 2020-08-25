//
//  Question.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/25/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import Foundation

struct Question {
    
    enum ResponseType {
        case text
        case multipleChoice
        case multiSelection
    }
    
    var questionText: String
    var type: ResponseType
    var responseAnswers: [ResponseAnswers]
    
}


