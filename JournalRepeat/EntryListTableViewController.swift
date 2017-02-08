//
//  EntryListTableViewController.swift
//  JournalRepeat
//
//  Created by Nick Reichard on 2/8/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import UIKit

class EntryListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return EntryController.sharedController.entrys.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath)
        
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}


