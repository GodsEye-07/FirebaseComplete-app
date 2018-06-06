//
//  SIgnUpViewController.swift
//  FirebaseComplete
//
//  Created by Ayush Verma on 06/06/18.
//  Copyright © 2018 Ayush Verma. All rights reserved.
//

import UIKit
import  Firebase

class SIgnUpViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField{
            passwordTextField.becomeFirstResponder()
        }
        else if textField == passwordTextField{
            confirmPasswordTextField.becomeFirstResponder()
        }
        else {
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func updateUI(){
        
        passwordTextField.delegate = self
        emailTextField.delegate = self
        confirmPasswordTextField.delegate = self
        
        signupButton.layer.cornerRadius = signupButton.layer.frame.size.height/2
        
        
    }
    
    func passwordMatching_And_EmptyTextField(){
        if passwordTextField.text != confirmPasswordTextField.text {
            
            let alert = UIAlertController(title: "No Match", message: "the password and confirm password do not match.", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default) { (true) in
                self.passwordTextField.text = ""
                self.confirmPasswordTextField.text = ""
            }
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        if emailTextField.text == "" && passwordTextField.text == "" && confirmPasswordTextField.text == ""{
            let alert  = UIAlertController(title: "Enter the details.", message: "No details have been entered for the Signup.", preferredStyle: .alert)
            let okbutton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        
        guard let email = emailTextField.text else {return}
        guard let pass = passwordTextField.text else{return}
        
        Auth.auth().createUser(withEmail: email, password: pass){user,error in
            if error == nil && user != nil{
                print("User Created")
            }
            else {
                print("the error is : \(String(describing: error?.localizedDescription))")
            }
        }
        
        passwordMatching_And_EmptyTextField()
        
    }
    
    

   
}
