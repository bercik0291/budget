//
//  ViewController.swift
//  Budget
//
//  Created by Kacper Kowalski on 25.08.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableData = ["100","200", "300"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func unwindToRoot(segue: UIStoryboardSegue) {
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = tableData[indexPath.row]
        return cell
        
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "BudgetCell") as? BudgetCell {
//            
//            return cell
//        } else {
//            return BudgetCell()
//        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
}
