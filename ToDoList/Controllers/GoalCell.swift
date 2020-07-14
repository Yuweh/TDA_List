//
//  GoalCell.swift
//  ToDoList
//
//  Created by Francis Yuweh on 7/14/20.
//  Copyright © 2020 Francis XiApps. All rights reserved.
//

import Foundation
import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDetails
        self.goalTypeLbl.text = goal.goalType.hashValue == 0 ? "Short Term" : "Long Term"
        self.completionView.isHidden = goal.goalComplete ? false : true
    }
    
}
