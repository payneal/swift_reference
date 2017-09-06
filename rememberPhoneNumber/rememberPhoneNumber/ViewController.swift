//
//  ViewController.swift
//  rememberPhoneNumber
//
//  Created by Ali Payne on 9/5/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var enterPhoneNUmber: UITextField!
    
    
    @IBAction func savePhone(_ sender: Any) {
    
        let numb = enterPhoneNUmber.text
    
        UserDefaults.standard.set(numb, forKey:"phoneNumber")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let phoneObject = UserDefaults.standard.object(forKey: "phoneNumber")
        
        if let number = phoneObject as? String {
            enterPhoneNUmber.text = number
        } else {
            enterPhoneNUmber.text = "no number saved"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

