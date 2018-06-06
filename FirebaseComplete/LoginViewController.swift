//
//  LoginViewController.swift
//  
//
//  Created by Ayush Verma on 04/06/18.
//

import UIKit
import Firebase

class LoginViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiUpdates()
        emailTextField.delegate = self
        passwordTextField.delegate = self

    }
    
    @IBAction func LoginButtonPressed(_ sender: Any) {
        
        if emailTextField.text == "" {
            alert(message: "Please enter the Email ID to continue.", buttonMessage: "OK")
        }
        else if passwordTextField.text == ""{
            alert(message: "Please enter the password to continue.", buttonMessage: "OK")
        }
        
     
    }

    func uiUpdates(){
        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
    }

    func alert(message :String, buttonMessage : String)  {
        
        let alertView = UIAlertController(title: "ALERT", message:message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: buttonMessage, style: .cancel, handler: nil)
        alertView.addAction(okButton)
        
        present(alertView, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField{
            passwordTextField.becomeFirstResponder()
        }
        else if textField == passwordTextField{
            textField.resignFirstResponder()
        }
        return true
    }
    
    
    
    
    
    
    
    

}
