//
//  LoginViewController.swift
//  
//
//  Created by Ayush Verma on 04/06/18.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiUpdates()

    }
    
    @IBAction func LoginButtonPressed(_ sender: Any) {
        
        if emailTextField.text == "" || passwordTextField.text = ""{
            
            alert(message: "Some of the fileld are enpty", buttonMessage: "OK")
        }
        
        
    }
    
    
    
    func uiUpdates(){
        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
        
    }
    
    
    
    
    func alert(message :String, buttonMessage : String)  {
        
        let alert = UIAlertController(title: "ALert", message:message, preferredStyle: .alert)
        let button = UIAlertAction(title: buttonMessage, style: .cancel, handler: nil)
        
    }
    

}
