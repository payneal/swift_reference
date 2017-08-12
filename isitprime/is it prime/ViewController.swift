//
//  ViewController.swift
//  is it prime
//
//  Created by Ali Payne on 8/9/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberEntered: UITextField!
    
    @IBOutlet weak var answerOnPrime: UILabel!
    
    
    @IBAction func showAnswer(_ sender: Any) {
        let numEntered = Int(numberEntered.text!)
        
        if is_prime(n: numEntered!) {
            answerOnPrime.text = "yes"
            return
        }
         answerOnPrime.text = "no"
    }
    
    
    func is_prime(n: Int) -> Bool{
        if n <= 1 {
            return false
        } else if n <= 3 {
            return true
        }
        else {
            var i = 2
            while i*i <= n {
                if n % i == 0 {
                    return false
                }
                i = i + 1
            }
            return true
        }
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

