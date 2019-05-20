//
//  ApplyCouponView.swift
//  AtomicDesignDemo
//
//  Created by Daniel Beltran on 5/20/19.
//  Copyright © 2019 Liverpool. All rights reserved.
//

import UIKit

protocol ApplyCouponViewDelegate:class {
    func onTapButton(_ sender:UIButton)
}

class ApplyCouponView: UIView {
    
    weak var delegate: ApplyCouponViewDelegate?
    
    var contentView:UIView?
    @IBInspectable var nibName:String?
    
    @IBOutlet weak var buttonLiverpool: ButtonGeneral!
    @IBOutlet weak var labelLiverpool: LabelPrecio!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func xibSetup() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask =
            [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }
    
    func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else { return nil }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(
            withOwner: self,
            options: nil).first as? UIView
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        xibSetup()
        contentView?.prepareForInterfaceBuilder()
    }
    
    @IBAction func onTapButton(_ sender: UIButton) {
        delegate?.onTapButton(sender )
    }

    
}
