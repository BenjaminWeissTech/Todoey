//
//  ViewController.swift
//  Todoey
//
//  Created by Benjamin Weiss on 9/17/18.
//  Copyright © 2018 Benjamin Weiss. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Pickup Kids", "Buy Food", "Finish Course"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    //Mark - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TODOItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //Mark - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType == .none
        } else {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }
    
    


}

