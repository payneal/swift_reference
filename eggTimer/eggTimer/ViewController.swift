//
//  ViewController.swift
//  eggTimer
//
//  Created by Ali Payne on 8/26/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 210
    
    func decreaseTimer() {
        
        if time > 0 {
            time -= 1
            thetime.text = String(time)
        } else {
            timer.invalidate()
        }
    }
    
    @IBOutlet weak var thetime: UILabel!
    @IBOutlet var labelTime: UIView!
    
    
    @IBAction func pauseButton(_ sender: Any) {
        print(" you hit pause")
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func sub10secButton(_ sender: Any) {
        
        if time > 10 {
            print(" -10 secs")
            time -= 10
            thetime.text = String(time)
        }
    }
    
    @IBAction func add10secButton(_ sender: Any) {
        print(" +10 secs")
        time += 10
        thetime.text = String(time)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        time = 210
        thetime.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

