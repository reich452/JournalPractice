//
//  EntryController.swift
//  JournalRepeat
//
//  Created by Nick Reichard on 2/8/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedController = EntryController()
    
    var entrys: [Entry] = []
    
    init() {
        
    }

    // MARK: - Create 
    
    // function that adds the entry parameter to the entries array
    
    func add(entry: Entry) {
        
        
        entrys.append(entry)
        
    }
    
    // MARK: - Read 
    
    // MARK: - Update 
    
    // MARK: - Delete
    
    // function that removes the entry from the entries array
    
    func remove(entry: Entry) {
        guard let index = entrys.index(of: entry) else { return }
        
        entrys.remove(at: index)
        
    }
    
    
}
