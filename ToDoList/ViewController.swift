//
//  ViewController.swift
//  ToDoList
//
//  Created by Aziza on 23.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addtask(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        let taskName = textfield.text
        var taskarray: [String] = []
        
        if let array = defaults.array(forKey: "taskArray") {
            taskarray = array as! [String]
            taskarray.append (taskName)?
            defaults.set(array, forKey: "taskArray")
        }
        
        
        let array = [taskName]
        
        defaults.set(array, forKey: "taskArray")
    }
}

