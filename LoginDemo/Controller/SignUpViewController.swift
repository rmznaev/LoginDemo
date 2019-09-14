//
//  SignUpViewController.swift
//  LoginDemo
//
//  Created by Ramazan Abdullayev on 9/10/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
        
    }
    
    func setUpElements() {
        
        // Hide the Error label
        errorLabel.alpha = 0.0
        
        // Style the elements
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
        
    }
    
    // Check the fields and validate that the data is correct. If everything is correct this method returns nil. Otherwise it returns error message
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        
        
        return nil
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        
        // Validate the fields
        
        // Create the user
        
        // Transition to the home screen
        
    }
    

}
