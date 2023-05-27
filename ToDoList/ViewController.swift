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
        
        let taskName = textfield.text!
        
        var newTask = TaskItem()
        
        newTask.name = taskName
        
        var taskarray: [TaskItem] = []
        
        
        
        
        
        
        if let array = defaults.array(forKey: "taskItemArray") {
            taskarray = array as! [TaskItem]
            taskarray.append(newTask)
            defaults.set(taskarray, forKey: "taskItemArray")
        }
        else {
            let array = [newTask]
            defaults.set(taskarray, forKey: "taskItemArray")
        }
        
//        var taskarray: [String] = []
//
//        if let array = defaults.array(forKey: "taskArray") {
//            taskarray = array as! [String]
//            taskarray.append (taskName)
//            defaults.set(taskarray, forKey: "taskArray")
//        } else {
//            let array = [taskName]
//            defaults.set(array, forKey: "taskArray")
//    }
    textfield.text = ""
}
}

