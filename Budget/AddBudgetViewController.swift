//
//  AddBudgetViewController.swift
//  Budget
//
//  Created by Kacper Kowalski on 25.08.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import UIKit

class AddBudgetViewController: UIViewController, UINavigationControllerDelegate {
    
    var budgetAmount: String!
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var FourthTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let newBudgetAmount = firstTextField.text {
            budgetAmount = newBudgetAmount
        }
    }
    
}
