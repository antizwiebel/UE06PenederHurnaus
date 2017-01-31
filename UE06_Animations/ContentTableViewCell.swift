//
//  ContentTableViewCell.swift
//  UE06_Animations
//
//  Created by Mark Peneder on 31.01.17.
//  Copyright © 2017 MC. All rights reserved.
//

import UIKit

class ContentTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var contentLabel: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
