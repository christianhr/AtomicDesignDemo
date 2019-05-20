//
//  ViewController.swift
//  AtomicDesignDemo
//
//  Created by CHERNANDER04 on 5/20/19.
//  Copyright © 2019 Liverpool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ApplyCouponViewDelegate {
    func onTapButton(_ sender: UIButton) {
        print("Presiona botton")
    }

    @IBOutlet weak var applyCouponView: ApplyCouponView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let bundle = Bundle(for: ApplyCouponView.self)
        let applyCoupon = bundle.loadNibNamed("ApplyCouponView", owner: nil, options: nil)![0] as! ApplyCouponView
        applyCoupon.frame = applyCouponView.frame
        applyCoupon.frame.origin = CGPoint.init(x: 0, y: 0)
        applyCoupon.delegate = self
        applyCouponView.subviews.forEach({ $0.removeFromSuperview() }) // this gets things done
        applyCouponView.addSubview(applyCoupon)
    }

    

}

