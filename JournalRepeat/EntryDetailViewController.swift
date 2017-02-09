//
//  EntryDetailViewController.swift
//  JournalRepeat
//
//  Created by Nick Reichard on 2/8/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Properties
    
    @IBOutlet weak var EntryTitleTextLable: UITextField!
    @IBOutlet weak var DetailJournalTextView: UITextView!
    
    var entry: Entry?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        EntryTitleTextLable.delegate = self
        
        updateViews()
        
    }
    
    func updateViews() {
        guard let entry = entry else { return }
        EntryTitleTextLable.text = entry.title
        DetailJournalTextView.text = entry.bodyText
    }
    
    
    // MARK: - Actions 
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        
    }
    
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        self.EntryTitleTextLable.text = ""
        self.DetailJournalTextView.text = ""
        
    }
    

  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
