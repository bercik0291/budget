//
//  Budget.swift
//  Budget
//
//  Created by Kacper Kowalski on 25.08.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import Foundation

class Budget {
    
    private var _firstLabel: String
    private var _secondLabel: String
    private var _thirdLabel: String
    private var _fourthLabel: String
    
    var firstLabel: String {
        return _firstLabel
    }
    
    var secondLabel: String {
        return _secondLabel
    }
    
    var thirdLabel: String {
        return _thirdLabel
    }
    
    var fourthLabel: String {
        return _fourthLabel
    }
    
    init(firstLabel: String, secondLabel: String, thirdLabel: String, fourthLabel: String) {
        
        self._firstLabel = firstLabel
        self._secondLabel = secondLabel
        self._thirdLabel = thirdLabel
        self._fourthLabel = fourthLabel
    }
}
