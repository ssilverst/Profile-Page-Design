//
//  NameTableViewCell.swift
//  YeahIDK
//
//  Created by Sam Silverstein on 9/6/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel : UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
