//
//  ChooseBeastieViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 3/3/25.
//

import UIKit

class ChooseBeastieViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var beastieCollectionView: UICollectionView!
    
    var images: [String] = ["Blue Beastie", "Green Beastie", "Orange Beastie", "Pink Beastie", "Purple Beastie", "Red Beastie", "Teal Beastie", "Yellow Beastie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        beastieCollectionView.delegate = self
        beastieCollectionView.dataSource = self
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        //cell.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1.0)
        //cell.backgroundConfiguration?.image
        
        let myCellImage = UIImage(named: images[indexPath.row])
        //cell.eventImage.image = myCellImage
        //TEST
        cell.backgroundConfiguration?.image = myCellImage
        
        return cell
    }
    

}
