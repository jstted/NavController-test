//
//  Storage.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 23.12.2022.
//

import Foundation

class Storage {
    
    static let shared = Storage()
    var reminders: [Reminder] = []
    
    private init () {}
    
}

struct Reminder {
    var text: String?
    let date: Date
}
