//
//  SecondViewController.swift
//  toDoList
//
//  Created by Ali Payne on 9/6/17.
//  Copyright © 2017 Ali Payne. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var itemInput: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        
        let list = UserDefaults.standard.object(forKey: "list")
        
        if var todo = list as? [String] {
            todo.append(itemInput.text!)
    
            UserDefaults.standard.set(todo, forKey: "list")
            
        } else {
            UserDefaults.standard.set([itemInput.text], forKey: "list")
        }
        
        itemInput.text = ""
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

