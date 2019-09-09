//
//  ViewController.swift
//  LoginDemo
//
//  Created by Ramazan Abdullayev on 9/10/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
        
    }

    func setUpElements() {
        
        // Style the elements
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
        
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        
        
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        
        
    }
    
}
