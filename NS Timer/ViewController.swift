//
//  ViewController.swift
//  NS Timer
//
//  Created by JIJO G OOMMEN on 29/05/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var count = 0

    @IBOutlet weak var dIsplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sTart(_ sender: Any) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timeraction), userInfo: nil, repeats: true)
    }
    
    @IBAction func sTop(_ sender: Any) {
        timer.invalidate()
        dIsplay.text = "0"
        count = 0
    }
    
    @objc func timeraction(){
        
        count = count + 1
        dIsplay.text = "\(count)"
        
    }
}

