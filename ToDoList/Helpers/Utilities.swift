//
//  Utilities.swift
//  ToDoList
//
//  Created by Francis Yuweh on 7/15/20.
//  Copyright © 2020 Francis XiApps. All rights reserved.
//

import UIKit
import Foundation

class Utilities {
    
    //log or collect print statements
    static func log(_ message: String) {
        //print(message)
    }
    
    // This function is use for custom displaying Alert Box 
    static func showAlert(_ viewController: UIViewController, title: String, message: String, animated: Bool, completion: (() -> Void)?, actions: [UIAlertAction]) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        for action in actions {
            alertController.addAction(action)
        }
        
        viewController.present(alertController, animated: animated, completion: completion)
    }
    
    
}
