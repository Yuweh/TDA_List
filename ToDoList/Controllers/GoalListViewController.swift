//
//  GoalListViewController.swift
//  ToDoList
//
//  Created by Francis Yuweh on 7/15/20.
//  Copyright © 2020 Francis XiApps. All rights reserved.
//

import UIKit

class GoalListViewController: UIViewController {
    
    @IBOutlet weak var completeTitleLbl: UILabel!
    @IBOutlet weak var completeNumLbl: UILabel!
    @IBOutlet weak var shortTitleLbl: UILabel!
    @IBOutlet weak var shortNumLbl: UILabel!
    @IBOutlet weak var longTitleLbl: UILabel!
    @IBOutlet weak var longNumLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var goals: [Goal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sampleGoal: Goal = Goal(taskTitle: "To DO this App", goalType: GoalType.shortTerm, goalDetails: "Finish this App", goalComplete: false)
        self.goals.append(sampleGoal)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if goals.count >= 1 {
            tableView.isHidden = false
        } else {
            tableView.isHidden = true
        }

    }
    
}

extension GoalListViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        let goal = goals[indexPath.row]
        cell.configureCell(goal: goal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

}
