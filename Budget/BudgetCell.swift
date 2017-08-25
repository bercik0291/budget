//
//  BudgetCell.swift
//  Budget
//
//  Created by Kacper Kowalski on 25.08.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import UIKit

class BudgetCell: UITableViewCell {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel?
    @IBOutlet weak var thirdLabel: UILabel?
    @IBOutlet weak var fourthLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(budget: Budget) {
        firstLabel.text = budget.firstLabel
        secondLabel?.text = budget.secondLabel
        thirdLabel?.text = budget.thirdLabel
        fourthLabel?.text = budget.fourthLabel
    }
    
    
}
