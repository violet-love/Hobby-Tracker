//
//  FriendTableViewCell.swift
//  HobbyTracker
//
//  Created by Violet Lavender Love on 5/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var homeTownLabel: UILabel!
    
    @IBOutlet var hobbiesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
