//
//  SurveyViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/4/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {
    
//    MARK: Outlets and Actions
    
//    MAIN SURVEY LABEL
    @IBOutlet weak var mainSurveyLabel: UILabel!
    
//    QUESTION LABEL
    @IBOutlet weak var questionsLabel: UILabel!
    
//    TEXT RESPONSE
    @IBOutlet weak var responseTextField: UITextField!
    
//    SINGLE ANSWER RESPONSE
    @IBOutlet weak var singleResponseStackView: UIStackView!
    @IBOutlet weak var singleResponse1: UIButton!
    @IBOutlet weak var singleResponse2: UIButton!
    @IBOutlet weak var singleResponse3: UIButton!
    @IBAction func singleResponseButtonTapped(_ sender: Any) {
    }
    
//    MULTI ANSWER RESPONSE
    @IBOutlet weak var multiAnswerResponseStackView: UIStackView!
    @IBOutlet weak var multiResponse1: UIButton!
    @IBOutlet weak var multiResponse2: UIButton!
    @IBOutlet weak var multiResponse3: UIButton!
    @IBOutlet weak var multiResponse4: UIButton!
    @IBAction func multiResponseButtonTapped(_ sender: Any) {
    }
    
//    RANGED RESPONSE NUMBER FIELDS
    @IBOutlet weak var rangedNumberStackViews: UIStackView!
//    Ranged 1
    @IBOutlet weak var rangedResponse1Label: UILabel!
    @IBAction func RRButton1Tapped(_ sender: Any) {
    }
    
//    Ranged 2
    @IBOutlet weak var rangedResponse2Label: UILabel!
    @IBAction func RRButton2Tapped(_ sender: Any) {
    }
    
//    Ranged 3
    @IBOutlet weak var rangedResponse3Label: UILabel!
    @IBAction func RRButton3Tapped(_ sender: Any) {
    }
    
//    Ranged 4
    @IBOutlet weak var rangedResponse4Label: UILabel!
    @IBAction func RRButton4Tapped(_ sender: Any) {
    }
    
//    Ranged 5
    @IBOutlet weak var rangedResponse5Label: UILabel!
    @IBAction func RRButon5Tapped(_ sender: Any) {
    }
    
//    RANGED RESPONSE LABELS
    @IBOutlet weak var ratingLowAndHighStackView: UIStackView!
    @IBOutlet weak var ratingLowLabel: UILabel!
    @IBOutlet weak var ratingHighLabel: UILabel!
    
//    SUBMIT AND NEXT BUTTON
    @IBOutlet weak var nextAndSubmitButton: UIButton!
    @IBAction func NASButtonTapped(_ sender: Any) {
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
