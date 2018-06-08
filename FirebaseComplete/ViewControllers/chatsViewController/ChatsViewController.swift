//
//  messageViewController.swift
//  FirebaseComplete
//
//  Created by Ayush Verma on 06/06/18.
//  Copyright © 2018 Ayush Verma. All rights reserved.
//

import UIKit
import Firebase

class ChatsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! chatsTableViewCell
        
        cell.profileImageView.backgroundColor = UIColor(red: CGFloat(arc4random() % 255)/255.0, green: CGFloat(arc4random() % 255)/255.0, blue: CGFloat(arc4random() % 255)/255.0, alpha: 1.0)
        cell.nameLabel.text = "Ayush Verma"
        cell.messageLabel.text = "this is a test message to see if this mockup of the WhatsApp which I am creating works fine or not?"
        cell.timeLabel.text = "10:45 PM"
        cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.size.height/2
        
        tableView.separatorInset.left = 100.0
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
}
