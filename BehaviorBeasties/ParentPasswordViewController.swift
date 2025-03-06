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
        errorLabel.text = ""
        if birthYearOutlet.text == "" {
            errorLabel.text = "Enter your birth year!"
        } else {
            if Int(birthYearOutlet.text!)! >= 1909 && Int(birthYearOutlet.text!)! <= 2007 {
                performSegue(withIdentifier: "parentChoiceSegue", sender: nil)
            } else {
                errorLabel.text = "Invalid year!"
            }
        }
        birthYearOutlet.text = ""
        
    }
    
    

}
