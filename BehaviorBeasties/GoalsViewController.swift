//
//  GoalsViewController.swift
//  BehaviorBeasties
//
//  Created by EVANGELINE NOFTZ on 3/14/25.
//

import UIKit

class GoalsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        tableViewOutlet.reloadData()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = "\(AppData.tasks[indexPath.row].name)"
        cell?.detailTextLabel?.text = "\(AppData.tasks[indexPath.row].points)"
        return cell!
        
        
    }
    


}
