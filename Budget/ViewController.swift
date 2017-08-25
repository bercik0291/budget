//
//  ViewController.swift
//  Budget
//
//  Created by Kacper Kowalski on 25.08.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var tableData = ["100","200", "300"]
    
    var budgets = [Budget]()
    var budgetList: [String] = ["100", "200", "300", "400"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func unwindToRoot(segue: UIStoryboardSegue) {
        // just got back
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
//        let budget = Budget(firstLabel: "fdgdfg", secondLabel: "sd", thirdLabel: "ds", fourthLabel: "sd")
//        let budget1 = Budget(firstLabel: "vcbvcbvb", secondLabel: "sd", thirdLabel: "sd", fourthLabel: "sd")
//        
//        budgets.append(budget)
//        budgets.append(budget1)
//        
//        tableView.reloadData()
    }
    
    @IBAction func unWindToRoot(_ sender: UIStoryboardSegue) {
        
        if sender.source is AddBudgetViewController {
            if let senderVC = sender.source as? AddBudgetViewController {
                budgetList.append(senderVC.budgetAmount)
            }
            
            tableView.reloadData()
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let budget = budgets[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? BudgetCell {
            cell.configureCell(budget: budget)
            return cell
        } else {
            let cell = BudgetCell()
            cell.configureCell(budget: budget)
            return cell
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return budgets.count
    }
    
}

//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//        cell.textLabel?.text = tableData[indexPath.row]
//        return cell
//
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "BudgetCell") as? BudgetCell {
//
//            return cell
//        } else {
//            return BudgetCell()
//        }
