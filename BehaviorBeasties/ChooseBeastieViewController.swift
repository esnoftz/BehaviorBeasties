//
//  ChooseBeastieViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 3/3/25.
//

import UIKit

class ChooseBeastieViewController: UIViewController {
    

   
    
    
    
    var images: [String] = ["Blue Beastie", "Green Beastie", "Orange Beastie", "Pink Beastie", "Purple Beastie", "Red Beastie", "Teal Beastie", "Yellow Beastie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    /*func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        //cell.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1.0)
        //cell.backgroundConfiguration?.image
        
        let myCellImage = UIImage(named: images[indexPath.row])
        //cell.eventImage.image = myCellImage
        //TEST
        //cell.backgroundConfiguration?.image = myCellImage
        
        beastieImageView.image = myCellImage
        cell.beastieImageView
        return cell
    }*/
    
    @IBAction func redTapAction(_ sender: UITapGestureRecognizer) {
        print("red")
        AppData.selectedBeastie = "Red Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
    @IBAction func orangeTapAction(_ sender: UITapGestureRecognizer) {
        print("orange")
        AppData.selectedBeastie = "Orange Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
    @IBAction func yellowTapAction(_ sender: UITapGestureRecognizer) {
        print("yellow")
        AppData.selectedBeastie = "Yellow Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
    @IBAction func greenTapAction(_ sender: UITapGestureRecognizer) {
        print("green")
        AppData.selectedBeastie = "Green Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
    @IBAction func tealTapAction(_ sender: UITapGestureRecognizer) {
        print("teal")
        AppData.selectedBeastie = "Teal Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
    @IBAction func blueTapAction(_ sender: UITapGestureRecognizer) {
        print("blue")
        AppData.selectedBeastie = "Blue Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
    @IBAction func purpleTapAction(_ sender: UITapGestureRecognizer) {
        print("purple")
        AppData.selectedBeastie = "Purple Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
    @IBAction func pinkTapAction(_ sender: UITapGestureRecognizer) {
        print("pink")
        AppData.selectedBeastie = "Pink Beastie"
        performSegue(withIdentifier: "chosenBeastieSegue", sender: nil)
    }
    
}
