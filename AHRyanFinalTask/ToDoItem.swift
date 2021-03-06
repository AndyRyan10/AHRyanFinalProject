//
//  ToDoItem.swift
//  AHRyanFinalTask
//
//  Created by Andrew Ryan on 6/21/17.
//  Copyright © 2017 AndrewRyan. All rights reserved.
//

import UIKit

class ToDoItem: CustomStringConvertible {
    var title: String
    var quadrant: Int?
    var pomodoros: Int?
    var snoozeDate: Date?
    var dueDate: Date?
    
    var description: String {
        return "\(title), \(String(describing: quadrant)), poms: \(String(describing: pomodoros)), \(String(describing: snoozeDate)), Due: \(String(describing: dueDate))"
    }
    
    init(title: String, quadrant: Int?, pomodoros: Int?, snoozeDate: Date?, dueDate: Date?) {
        self.title = title
        self.quadrant = quadrant
        self.pomodoros = pomodoros
        self.snoozeDate = snoozeDate
        self.dueDate = dueDate
    }
    
}
