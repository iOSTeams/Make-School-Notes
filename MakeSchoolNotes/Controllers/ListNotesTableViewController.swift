//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    var count = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    // 2
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("listNotesTableViewCell", forIndexPath: indexPath)
//        cell.textLabel?.text = "\(count)Yay - it's working!"
//        count+=1
//        
//        print("count: \(count); row: \(indexPath.row)")
//
//        return cell
        
        let cell = tableView.dequeueReusableCellWithIdentifier("listNotesTableViewCell", forIndexPath: indexPath) as! ListNotesTableViewCell
        
        cell.noteTitleLabel.text = "note's title"
        cell.noteModTimeLabel.text = "note's modification time"
        
        return cell
    }
}