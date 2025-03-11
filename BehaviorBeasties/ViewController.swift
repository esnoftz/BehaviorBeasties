//
//  ViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 2/28/25.
//

import UIKit
import FirebaseCore
import FirebaseDatabase


class AppData {
    static var selectedBeastie = ""
    static var currentReward = Reward()
    static var tasks = [Task]()
    static var taskIndex = -1
    static var starsEarned = 0
    
    static var ref: DatabaseReference!
    

    
    static func readFromFirebase() {
        // TASKS
        ref.child("tasks").observe(.childAdded, with: { (snapshot) in
            let dict = snapshot.value as! [String:Any]
            let t = Task(dict: dict)
            
            t.key = snapshot.key
            
            // adding the task object to the Student array
            var yes = 0
            for tas in self.tasks {
                if tas.name == t.name && tas.points == t.points {
                    yes = 1
                }
            }
            if yes == 0 {
                self.tasks.append(t)
                print("added")
            }
        
            //self.namesTableView.reloadData()
            
        })
    }
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppData.ref = Database.database().reference()
        AppData.readFromFirebase()

        
    }
    
    @IBAction func beastieClick(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "chooseBeastieSegue", sender: nil)
        
    }
    


}

