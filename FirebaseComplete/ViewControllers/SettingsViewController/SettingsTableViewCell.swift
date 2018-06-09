//
//  SettingsTableViewCell.swift
//  FirebaseComplete
//
//  Created by Ayush Verma on 09/06/18.
//  Copyright © 2018 Ayush Verma. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingsImageView: UIImageView!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
