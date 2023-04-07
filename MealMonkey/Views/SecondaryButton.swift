//
//  SecondaryButton.swift
//  MealMonkey
//
//  Created by Macbook Pro on 30/03/23.
//

import UIKit

@IBDesignable
//turunan dari primary button
class SecondaryButton: PrimaryButton {
    override func setup() {
        super.setup()
        backgroundColor = .clear
        //font color
        tintColor = UIColor(named: "Main", in: Bundle(for: self.classForCoder), compatibleWith: nil)
        
        layer.borderWidth = 1
        layer.borderColor = tintColor.cgColor
        
    }
}
