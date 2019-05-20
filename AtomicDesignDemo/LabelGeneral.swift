//
//  LabelPrecio.swift
//  AtomicDesignDemo
//
//  Created by Daniel Beltran on 5/20/19.
//  Copyright © 2019 Liverpool. All rights reserved.
//

import UIKit

@IBDesignable
class LabelPrecio: UILabel {

    enum TypeLabel:Int {
        case Titulo
        case Descripcion
        case PrecioGris
        case PrecioRojo
    }
    
    // Programmatically: use the enum
    var label:TypeLabel = .Titulo
    
    // IB: use the adapter
    @IBInspectable var labelAdapter:Int = 0 {
        didSet {
            switch labelAdapter {
            case TypeLabel.Titulo.rawValue:
                self.textColor = UIColor.black
                self.font = UIFont.boldSystemFont(ofSize: 18.0)
                break
            case TypeLabel.Descripcion.rawValue:
                self.textColor = UIColor.lightGray
                self.font = UIFont.systemFont(ofSize: 16.0)
                break
            case TypeLabel.PrecioGris.rawValue:
                self.textColor = UIColor.lightGray
                self.font = UIFont.boldSystemFont(ofSize: 16.0)
                break
            case TypeLabel.PrecioRojo.rawValue:
                self.textColor = UIColor.red
                self.font = UIFont.boldSystemFont(ofSize: 16.0)
                break
            default:
                self.textColor = UIColor.black
                self.font = UIFont.boldSystemFont(ofSize: 18.0)
            }
        }
        
    }
    
}
