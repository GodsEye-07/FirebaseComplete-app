//
//  chatsTableViewCell.swift
//  FirebaseComplete
//
//  Created by Ayush Verma on 08/06/18.
//  Copyright © 2018 Ayush Verma. All rights reserved.
//

import UIKit

class chatsTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
