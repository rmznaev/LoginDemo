//
//  LoginViewController.swift
//  LoginDemo
//
//  Created by Ramazan Abdullayev on 9/10/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
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
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(loginButton)
        
    }
    
    func validateFields() -> String? {
        
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields!"
            
        }
        
        // Check if email is correct
        
        // Check if password is correct
        
        return nil
        
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        // TODO: Validate the text fields
        let error = validateFields()
        
        if error != nil {
            
            // There is somehting wrong with the fields, show error message
            showError(error!)
            
        } else {
            
            // Create cleaned versions of the text field
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Signing in the user
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                
                if error != nil {
                    
                    // Could not signed in
                    self.showError(error!.localizedDescription)
                    
                } else {
                    
                    // Transition to the home screen
                    self.transitionToHome()
                    
                }
                
            }
            
        }

    }
    
    func showError(_ message: String) {
        
        errorLabel.text = message
        errorLabel.alpha = 1
        
    }
    
    func transitionToHome() {
        
        let homeViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
    
}
