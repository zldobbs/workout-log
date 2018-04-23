//
//  Activity+CoreDataClass.swift
//  workout-log
//
//  Created by Zachary Dobbs on 4/22/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Activity)
public class Activity: NSManagedObject {
    var date: Date? {
        get {
            return activityDate as Date?
        }
        set {
            activityDate = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, amount: String?, weight: Double, date: Date) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Activity.entity(), insertInto: managedContext)
        
        self.name = name
        self.amount = amount
        self.weight = weight
        self.date = date
    }
}
