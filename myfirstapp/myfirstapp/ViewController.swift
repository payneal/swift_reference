//
//  ViewController.swift
//  myfirstapp
//
//  Created by Ali Payne on 7/29/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var responseField: UILabel!
    
    
    @IBAction func theButton(_ sender: UIButton) {
        if let age:Int = Int(textField.text!) {
            responseField.textColor = UIColor.red
            responseField.text = "Your cat is " + String(age * 7) + " years old"
        
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

