//
//  Entry.swift
//  JournalRepeat
//
//  Created by Nick Reichard on 2/8/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import Foundation

class Entry {
    
    
    var timeStamp = Date()
    var title: String
    var bodyText: String
    
    init(timeStamp: Date, title: String, bodyText: String) {
        
        self.timeStamp = timeStamp
        self.title = title
        self.bodyText = bodyText
        
        
    }

    
    
    
    
}
