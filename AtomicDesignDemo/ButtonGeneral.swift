//
//  ButtonGeneral.swift
//  AtomicDesignDemo
//
//  Created by Daniel Beltran on 5/20/19.
//  Copyright © 2019 Liverpool. All rights reserved.
//

import UIKit

@IBDesignable
class ButtonGeneral: UIButton {

    enum TypeButton:Int {
        case LiverpoolRosa
        case LiverpoolGris
        case LiverpoolContornoRosa
        case LiverpoolContornoGris
    }
    
    // Default value
    var button:TypeButton = .LiverpoolRosa
    
    // IB: use the adapter
    @IBInspectable var buttonAdapter:Int = 0 {
        didSet {
            switch buttonAdapter {
            case TypeButton.LiverpoolRosa.rawValue:
                self.layer.borderWidth = 0.0
                self.backgroundColor = UIColor.red
                self.titleLabel?.textColor = UIColor.white
                break
            case TypeButton.LiverpoolGris.rawValue:
                self.layer.borderWidth = 0.0
                self.backgroundColor = UIColor.lightGray
                self.titleLabel?.textColor = UIColor.black
                break
            case TypeButton.LiverpoolContornoRosa.rawValue:
                self.layer.borderWidth = 1.0
                self.layer.borderColor = UIColor.red.cgColor
                self.backgroundColor = UIColor.white
                self.titleLabel?.textColor = UIColor.white
                break
            case TypeButton.LiverpoolContornoGris.rawValue:
                self.layer.borderWidth = 1.0
                self.layer.borderColor = UIColor.lightGray.cgColor
                self.backgroundColor = UIColor.white
                self.titleLabel?.textColor = UIColor.white
                break
            default:
                self.layer.borderWidth = 0.0
                self.backgroundColor = UIColor.red
                self.titleLabel?.textColor = UIColor.white
            }
        }
        
    }

}
