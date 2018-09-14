//
//  FriendsTableViewCell.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/13/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    @IBOutlet weak var profilePic : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
