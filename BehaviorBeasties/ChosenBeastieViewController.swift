//
//  ChosenBeastieViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 3/4/25.
//

import UIKit

class ChosenBeastieViewController: UIViewController {
    
    @IBOutlet weak var chosenBeastieImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chosenBeastieImageView.image = UIImage(named: AppData.selectedBeastie)

    }
    

}
