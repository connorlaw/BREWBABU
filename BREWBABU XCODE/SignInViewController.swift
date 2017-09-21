//
//  ViewController.swift
//  BREWBABU XCODE
//
//  Created by LAW on 24/08/2017.
//  Copyright © 2017 LAW. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
   @IBAction func signInPressed(_ sender: Any) {
    performSegue(withIdentifier: "goToTea", sender: nil)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is TeaViewController {
        }
    }
    
    // @IBAction func signInTapped(_ sender: Any) {
        
       // if let email = emailField.text, let password = passwordField.text {
            
       // }
        
   // }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        emailField.keyboardType = UIKeyboardType.emailAddress
        
        if passwordField.text == "" {
            passwordField.text = "PASSWORD"
        }
        
        if emailField.text == "" {
            emailField.text = "EMAIL"
        }
        
        if textField.text == "EMAIL" || textField.text == "PASSWORD" {
            textField.text = ""
            textField.returnKeyType = .done
            textField.autocapitalizationType = .sentences
        }
        
        if passwordField.text == "PASSWORD" {
            passwordField.isSecureTextEntry = false
        } else {
            passwordField.isSecureTextEntry = true
        }
        textField.becomeFirstResponder()
    }

}

