//
//  ViewController.swift
//  menuBar
//
//  Created by Ali Payne on 8/11/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    
    
    
    @IBAction func playButton(_ sender: Any) {
    
    }
    
    
    
    
    
    
    func processTimer() {
        print("a second has passed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

