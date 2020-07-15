//
//  AddGoalViewController.swift
//  ToDoList
//
//  Created by Francis Yuweh on 7/15/20.
//  Copyright © 2020 Francis XiApps. All rights reserved.
//

import UIKit

class AddGoalViewController: UIViewController {

    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var createGoalLbl: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
