//
//  CafeTableViewCell.swift
//  CafeWhere
//
//  Created by JillOU on 2020/8/18.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class CafeTableViewCell: UITableViewCell {

    @IBOutlet weak var cafesImageView: UIImageView!
    @IBOutlet weak var cafesnameLabel: UILabel!
    @IBOutlet weak var cafesopentimeLabel: UILabel!
    @IBOutlet weak var cafessocketLabel: UILabel!
    @IBOutlet weak var cafeslimitedtimeLabel: UILabel!
    @IBOutlet weak var cafeswifiLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
