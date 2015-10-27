//
//  MainViewController.swift
//  ChoreScore
//
//  Created by Melissa Allgeier on 10/20/15.
//  Copyright © 2015 Melissa Allgeier. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // UI Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // Class Vars
    
    let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("dayCell")!
        
        cell.textLabel!.text = days[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return tableView.bounds.size.height / CGFloat(days.count)

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let dvc = self.storyboard?.instantiateViewControllerWithIdentifier("DayDetailViewController") as! DayDetailViewController
        
        dvc.day = indexPath.row
        
        self.presentViewController(dvc, animated: true, completion: nil)
    }
    
}

