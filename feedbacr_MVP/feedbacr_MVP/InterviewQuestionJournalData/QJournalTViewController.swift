//
//  QJournalTViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/31/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class QJournalTViewController: UIViewController {
    
//    Unanswered TableView
    @IBOutlet weak var unansweredTableView: UnansweredTableView!
    
//    Answered TableView
    @IBOutlet weak var answeredTableView: AnsweredTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToJournalTVC(segue: UIStoryboardSegue) {
        
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
