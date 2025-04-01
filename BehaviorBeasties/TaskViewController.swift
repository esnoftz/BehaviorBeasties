//
//  TaskViewController.swift
//  BehaviorBeasties
//
//  Created by AVA SCHMIDT on 3/7/25.
//

import UIKit

class TaskViewController: UIViewController {
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var priceOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func enterAction(_ sender: UIButton) {
        if nameOutlet.text == "" || priceOutlet.text == ""{
            print("error")
        }
        else{
            var name = nameOutlet.text!
            var price = Int(priceOutlet.text!)!
            if price > 0{
                var task = Task(name: name, points: price)
                AppData.tasks.append(task)
                task.saveToFirebase()
                for theTask in AppData.tasks{
                    print(theTask)
                }
                nameOutlet.text = ""
                priceOutlet.text = ""
            }
            else{
                print("error")
            }
        }
        
    }
    


}
