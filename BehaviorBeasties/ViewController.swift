//
//  ViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 2/28/25.
//

import UIKit

class AppData {
    static var selectedBeastie = ""
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func beastieClick(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "chooseBeastieSegue", sender: nil)
        
    }
    


}

