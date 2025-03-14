//
//  DisplayRewardViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 3/13/25.
//

import UIKit

class DisplayRewardViewController: UIViewController {
    
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var prizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if AppData.currentReward.name == "Please Set A Reward"{
            prizeLabel.text = "No Prize Yet"
            costLabel.text = "0"
            
        }
        else{
            prizeLabel.text = "\(AppData.currentReward.name)"
            costLabel.text = "\(AppData.currentReward.cost)"
        }
    }
    


}
