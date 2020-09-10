//
//  SurveyEndPageViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/21/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit
import MessageUI

class SurveyEndPageViewController: UIViewController {
    
    //    MARK:- OUTLETS AND ACTIONS
    
    @IBOutlet weak var instructionTextLabel: UILabel!
    
    @IBAction func sendResponsesButtonTapped(_ sender: Any) {
        presentEmailComposer()
    }
    
}

private extension SurveyEndPageViewController {
    
    func presentEmailComposer() {
        if !MFMailComposeViewController.canSendMail() {
            #warning("Email failed. You need to setup your email account.")
            print("Mail services are not available")
            return
        } else {
            let composeVC = MFMailComposeViewController()
            composeVC.mailComposeDelegate = self
             
            // Configure the fields of the interface.
            composeVC.setToRecipients(["address@example.com"])
            composeVC.setSubject("Hello!")
            composeVC.setMessageBody(interviewResults.description, isHTML: false)
             
            // Present the view controller modally.
            self.present(composeVC, animated: true, completion: nil)
        }
    }
    
}

extension SurveyEndPageViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result {
        case .cancelled:
            print("cancelled")
        case .failed:
            #warning("I need to do this later.")
            print("Failed")
        case .saved:
            print("Saved")
        case .sent:
            print("Sent")
        }
        controller.dismiss(animated: true, completion: nil)
    }
    
}
