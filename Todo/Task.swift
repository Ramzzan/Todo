//
//  Task.swift
//  Todo
//
//  Created by Waleed on 02/05/2022.
//

import Foundation
import RealmSwift

class Task {
    @objc dynamic var name: String = ""
    @objc dynamic var date: Date = Date()
    
    init(name:String, date:Date) {
        self.name = name
        self.date = date
    }
}
