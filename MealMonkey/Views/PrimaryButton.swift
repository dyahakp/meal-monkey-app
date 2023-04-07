//
//  PrimaryButton.swift
//  MealMonkey
//
//  Created by Macbook Pro on 30/03/23.
//

import UIKit

    
    //1
    @IBDesignable
    class PrimaryButton: UIButton {
        @IBInspectable var cornerRadius: CGFloat = 28 {
        //7
            didSet {
                update()
            }//7
    }
        
        @IBInspectable var color: UIColor? {
        //7
            didSet {
                update()
            }//7
    }
        
    override func awakeFromNib() {
        //8
        setup()
    }
    
    
    //dipanggil ketika UI Button diaload oleh storyboard
    override func prepareForInterfaceBuilder() {
        //untuk update di storyboard
        super.prepareForInterfaceBuilder()
        //5
        setup()
    }
    //2
    convenience init(){
        self.init(type : .system)
        //4
        setup()
    }
    
    //3
    func setup () {
        //9
        backgroundColor = color ?? UIColor(named: "Main", in: Bundle(for: PrimaryButton.self), compatibleWith: nil)
        //10
        titleLabel?.font = UIFont.systemFont(ofSize: 14,weight: .semibold)
        
        //13
        tintColor = .white
       //12
        update()
    }
    
    //11
    func update() {
        layer.cornerRadius = self.cornerRadius
        layer.masksToBounds = true
    }
}

