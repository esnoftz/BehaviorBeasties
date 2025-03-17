//
//  StarsViewController.swift
//  BehaviorBeasties
//
//  Created by AVA SCHMIDT on 3/7/25.
//

import UIKit

class StarsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var labelOutlet: UILabel!
    
    var index = 0
    @IBOutlet weak var pickTaskOutlet: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickTaskOutlet.delegate = self
        pickTaskOutlet.dataSource = self
        labelOutlet.text = ""
        
        
        //pickTaskOutlet.reloadAllComponents()
    }
    
   
    @IBAction func addStarsAction(_ sender: UIButton) {
        AppData.starsEarned += AppData.tasks[AppData.taskIndex].points
        labelOutlet.text = "Stars Added Successfully!"
        print(AppData.starsEarned)
        AppData.ref.child("stars").setValue(AppData.starsEarned)

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //print("number of rows \(AppData.tasks.count)")
        return AppData.tasks.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        AppData.taskIndex = row
        print(row)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return AppData.tasks[row].name
    }
    
    
    
    

}
