//
//  InterviewQuestionJournalTableViewController.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/22/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class InterviewQuestionJournalTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return UnansweredInterviewQuestions.count
        } else {
            return answeredInterviewQuestion.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JournalQuestionCell", for: indexPath)
       
        var question: String
        
        if indexPath.section == 0 {
            question = UnansweredInterviewQuestions.keys.sorted()[indexPath.row]
        } else {
            question = answeredInterviewQuestion.keys.sorted()[indexPath.row]
        }
        // Configure the cell...
        cell.textLabel?.text = question
        return cell
    }

//    MARK:- Unwind to TableView Seque
    
    @IBAction func unwindToJournalTVC(segue: UIStoryboardSegue) {
        
    }

}
