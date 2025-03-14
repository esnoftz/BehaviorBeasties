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
    static var taskIndex = 0
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
                print("task added")
            }
        
            //self.namesTableView.reloadData()
            
        })
        
        
        // REWARDS
        ref.child("rewards").observe(.childAdded, with: { (snapshot) in
            let dict = snapshot.value as! [String:Any]
            let r = Reward(dict: dict)
            
            r.key = snapshot.key
            
            // adding the task object to the Student array
            // HELPPPPPPP!!
            /*var yes = 0
            for rew in self.currentReward {
                if rew.name == r.name && rew.cost == r.cost {
                    yes = 1
                }
            }
            if yes == 0 {
                self.currentReward.append(r)
                print("reward added")
            }*/
        
            //self.namesTableView.reloadData()
            
        })
        
        
        // STARS
        ref.child("stars").observe(.childAdded, with: { (snapshot) in
            let dict = snapshot.value as! [String:Any]
            let r = Reward(dict: dict)
            
            r.key = snapshot.key
            
            // figure this out idk
            
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

