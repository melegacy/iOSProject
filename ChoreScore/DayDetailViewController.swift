//
//  ViewController.swift
//  ChoreScore
//
//  Created by Melissa Allgeier on 10/20/15.
//  Copyright © 2015 Melissa Allgeier. All rights reserved.
//

import UIKit

class DayDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var day: Int
    var taskArray: NSMutableArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskArray = TaskManager.singleton.days[day]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //set text to chore details
        let cell = tableView.dequeueReusableCellWithIdentifier("taskCell")!
        
        cell.textLabel.text = taskArray.objectAtIndex(indexPath.row).title
        
        return cell
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of chores for that day
        return taskArray.count
    }
}




