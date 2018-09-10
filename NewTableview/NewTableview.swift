//
//  ViewController.swift
//  NewTableview
//
//  Created by Naveen Chowdary on 10/09/18.
//  Copyright © 2018 Naveen Chowdary. All rights reserved.
//

import UIKit

class NewTableview: UITableViewController {
    
    let newArray = ["hello","venkaty","venky","mounik","rahul","Virat"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell", for: indexPath)as! NewCell
        
        cell.newlabel.text = newArray [indexPath.row]
        
        
        return cell
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        }
        else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


