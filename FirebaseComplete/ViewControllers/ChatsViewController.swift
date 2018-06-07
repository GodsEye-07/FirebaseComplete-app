//
//  messageViewController.swift
//  FirebaseComplete
//
//  Created by Ayush Verma on 06/06/18.
//  Copyright © 2018 Ayush Verma. All rights reserved.
//

import UIKit
import Firebase

class ChatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
}
