//
//  MFMail.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 9/2/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import Foundation
import MessageUI

class ResultsMailViewController: MFMailComposeViewController {
    
    init(recepients: [String]?, subject: String = "", messageBody: String = "", messageBodyIsHTML: Bool = false) {
        super.init(nibName: nil, bundle: nil)
        setToRecipients(recepients)
        setSubject(subject)
        setMessageBody(messageBody, isHTML: messageBodyIsHTML)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
