//
//  ViewController.swift
//  QRCodeDemo
//
//  Created by 刘凡 on 15/5/15.
//  Copyright (c) 2015年 joyios. All rights reserved.
//

import UIKit
import AVFoundation
import QRCode

class ViewController: UIViewController {

    let scanner = QRCode()
    
    @IBOutlet weak var iconView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scanner.prepareScan(view) { (stringValue) -> () in
            print(stringValue)
        }
        // test scan frame
        scanner.scanFrame = view.bounds
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        scanner.startScan()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.iconView.image = QRCode.generateImage("我就是刀哥", avatarImage: UIImage(named: "avatar"))
    }
}

