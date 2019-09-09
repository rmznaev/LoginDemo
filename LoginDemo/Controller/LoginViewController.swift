//
//  LoginViewController.swift
//  LoginDemo
//
//  Created by Ramazan Abdullayev on 9/10/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
        
    }
    
    func setUpElements() {
        
        // Hide the Error label
        errorLabel.alpha = 0.0
        
        // Style the elements
        Utilities.styleTextField(firstName)
        Utilities.styleTextField(lastName)
        Utilities.styleFilledButton(loginButton)
        
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        
        
    }
    
}
