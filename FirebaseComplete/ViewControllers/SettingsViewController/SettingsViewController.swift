//
//  SettingsViewController.swift
//  FirebaseComplete
//
//  Created by Ayush Verma on 09/06/18.
//  Copyright © 2018 Ayush Verma. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var fields = [["Ayush Verma"],["Starred Messages","Whatsapp Web or Desktop"],["Account","Chats","Notifications","Data and Storage Usage"],["About and Help","Tell a Friend"]]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        self.title = "Settings"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fields[section].count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SettingsTableViewCell
        


        if indexPath.section == 0 {
                    cell.settingsImageView.backgroundColor = UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)
        }
        else{
            cell.settingsImageView.image = UIImage(named: "\(fields[indexPath.section][indexPath.row])")
        }
        
        if indexPath.section == 0{
            cell.settingsImageView.layer.cornerRadius = 28
        }
        else{
            cell.settingsImageView.layer.cornerRadius = 7.0
        }
       cell.settingsImageView.clipsToBounds = true
       
       cell.settingsLabel.text = fields[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 73
        }
        else{
            return 44
        }
    }

    
}
