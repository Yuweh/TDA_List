//
//  RealmDBManager.swift
//  ToDoList
//
//  Created by Francis Yuweh on 7/15/20.
//  Copyright © 2020 Francis XiApps. All rights reserved.
//

import Foundation
import RealmSwift

class RealmDBManager: NSObject {
    
    var realm: Realm?

    // save realm objects
    public func save(_ object: Object) {
        do {
            let realm = try! Realm()
            try realm.write {
                realm.add(object)
            }
        } catch {
            Utilities.log("Error Saving Object: \(error.localizedDescription)")
        }
    }
    
    // updates realm objects
    public func update(_ object: Object) {
        do {
            let realm = try! Realm()
            try realm.write {
                realm.add(object, update: .all)
            }
        } catch {
            Utilities.log("Error Saving Object: \(error.localizedDescription)")
        }
    }
    
    // delete realm objects
    public func delete(_ object: Object) {
        do {
            let realm = try! Realm()
            try realm.write {
                realm.delete(object)
            }
        } catch {
            Utilities.log("Error Deleting Object: \(error.localizedDescription)")
        }
    }
    
}
