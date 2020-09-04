//
//  AnsweredTableView.swift
//  feedbacr_MVP
//
//  Created by Michael Brown on 8/31/20.
//  Copyright © 2020 Michael Brown. All rights reserved.
//

import UIKit

class AnsweredTableView: UITableView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return answeredInterviewQuestion.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnsweredCell", for: indexPath)
       
        var question: String
    
            question = answeredInterviewQuestion.keys.sorted()[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = question
        return cell
    }
}
