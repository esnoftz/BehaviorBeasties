//
//  RewardViewController.swift
//  BehaviorBeasties
//
//  Created by AVA SCHMIDT on 3/6/25.
//

import UIKit

class RewardViewController: UIViewController {
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var costOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func enterAction(_ sender: UIButton) {
        if nameOutlet.text == "" || costOutlet.text == ""{
            print("error")
        }
        else{
            var name = nameOutlet.text!
            var cost = Int(costOutlet.text!)!
           var reward = Reward(name: name, cost: cost)
            AppData.currentReward = reward
            print(AppData.currentReward)
            
        }
    }
    
   

}
