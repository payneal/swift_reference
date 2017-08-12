//
//  ViewController.swift
//  5fingers
//
//  Created by Ali Payne on 8/8/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NumberGuessInput: UITextField!
    
    @IBOutlet weak var guessNumberResult: UILabel!
    
    
    var fingers = arc4random_uniform(6)
    
    @IBAction func guessButton(_ sender: Any) {
        let guess = NumberGuessInput.text
        
        if (Int(guess!) == Int(fingers))  {
            guessNumberResult.text = "your right"
        } else {
            guessNumberResult.text = "the number I was looking for is " + String(fingers)
        }
        fingers = arc4random_uniform(6)
    
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

