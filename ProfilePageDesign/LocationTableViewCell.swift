//
//  LocationTableViewCell.swift
//  YeahIDK
//
//  Created by Sam Silverstein on 9/6/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class LocationTableViewCell: UITableViewCell {
    @IBOutlet weak var locationLabel : UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
