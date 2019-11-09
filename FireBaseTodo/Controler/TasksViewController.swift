//
//  TasksViewController.swift
//  FireBaseTodo
//
//  Created by Dace Laizane on 09/11/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addItemTapped(_ sender: Any) {
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
    }
  

}// end class

extension TasksViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fireCell", for: indexPath)
        
        cell .textLabel?.text = "This is cell number: \(indexPath.row)"
        
        return cell
    }
    
    
    
}
