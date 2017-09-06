//
//  ViewController.swift
//  permDataStorage
//
//  Created by Ali Payne on 9/5/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UserDefaults.standard.set("ali", forKey: "name")
        
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String {
            print(name)
        }
        //let arr = [1, 2, 3, 4]
        
        //UserDefaults.standard.set(arr, forKey: "array")

        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

