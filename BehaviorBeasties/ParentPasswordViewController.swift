//
//  ParentPasswordViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 3/5/25.
//

import UIKit

class ParentPasswordViewController: UIViewController {

    @IBOutlet weak var birthYearOutlet: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func submitYearAction(_ sender: UIButton) {
        if birthYearOutlet.text == "" {
            errorLabel.text = "Enter your birth year!"
        } else {
            if Int(birthYearOutlet.text!)! >= 2007 {
                // put segue here
            } else {
                errorLabel.text = "Invalid year!"
            }
        }
        
    }
    
    

}
