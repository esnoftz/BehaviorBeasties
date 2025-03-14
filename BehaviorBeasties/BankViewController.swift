//
//  BankViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 3/14/25.
//

import UIKit

class BankViewController: UIViewController {
    
    @IBOutlet weak var bankTotalStarsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bankTotalStarsLabel.text = "Total Stars: \(AppData.starsEarned)"

    }
    

}
