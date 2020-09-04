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
        
        let controller = ResultsMailViewController(recepients: ["brown.michael.n@gmail.com"], subject: "Test email", messageBody: interviewResults.description, messageBodyIsHTML: true)
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        } else {
        self.present(controller, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
