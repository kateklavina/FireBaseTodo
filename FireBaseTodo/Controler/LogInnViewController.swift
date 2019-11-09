//
//  LogInnViewController.swift
//  FireBaseTodo
//
//  Created by Dace Laizane on 09/11/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import UIKit

class LogInnViewController: UIViewController {

    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var paswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.alpha = 0.1

        
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
    }
    

    @IBAction func registerButtonTapped(_ sender: Any) {
    }
    
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
  

}
