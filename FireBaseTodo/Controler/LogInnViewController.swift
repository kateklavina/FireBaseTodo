//
//  LogInnViewController.swift
//  FireBaseTodo
//
//  Created by Dace Laizane on 09/11/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import UIKit
import Firebase

class LogInnViewController: UIViewController {
    
    let segueIdentifier = "fireSegue"
    var ref:DatabaseReference!
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var paswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.alpha = 0

        
    }
    
    func displayWarningLabel(withText text:String){
        warningLabel.text = text
        
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {[weak self] in self?.warningLabel.alpha = 1
        }) { [weak self] complete in
            self?.warningLabel.alpha = 0
            
        }
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text, let pasword = paswordTextField.text, email != "", pasword != "" else {
        displayWarningLabel(withText: "Email/Pasword incorect!")
        return
    }
        
        Auth.auth().signIn(withEmail: email, password: pasword){
            (user, error) in
            if error != nil{
                self.displayWarningLabel(withText: "Error occured")
                return
            }
            if user != nil {
                self.performSegue(withIdentifier: self.segueIdentifier, sender: nil)
                return
                
            }
            self.displayWarningLabel(withText: "No such user")
        }
    }

    @IBAction func registerButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text, let pasword = paswordTextField.text, email != "", pasword != "" else {
            displayWarningLabel(withText: "Email/Pasword incorect!")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: pasword, completion:  { (user, error) in
            guard error == nil, user != nil else{
                print(error!.localizedDescription)
                self.displayWarningLabel(withText: "User is not created")
                return
            }
//            let userRef = self.ref.child((user?.user.uid)!)
//            userRef.setValue(["email":user?.user.email])
        })
    }
    
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
  

}
