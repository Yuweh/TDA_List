//
//  AddGoalViewController.swift
//  ToDoList
//
//  Created by Francis Yuweh on 7/15/20.
//  Copyright © 2020 Francis XiApps. All rights reserved.
//

import UIKit

class AddGoalViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var createGoalLbl: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createGoalLbl.bindToKeyboard()
        self.textView.delegate = self
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        self.textView.text = ""
        self.textView.textColor = UIColor.black
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeselectedColor()
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
