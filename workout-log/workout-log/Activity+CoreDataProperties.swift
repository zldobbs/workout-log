//
//  Activity+CoreDataProperties.swift
//  workout-log
//
//  Created by Zachary Dobbs on 4/22/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var amount: String?
    @NSManaged public var name: String?
    @NSManaged public var activityDate: NSDate?
    @NSManaged public var weight: Double

}
