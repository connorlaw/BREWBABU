//
//  TeaCategoryCell.swift
//  BREWBABU XCODE
//
//  Created by LAW on 21/09/2017.
//  Copyright © 2017 LAW. All rights reserved.
//

import UIKit

class TeaCategoryCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var teaCategoryLabel: UILabel!

    func updateUI(teaCategory: TeaCategoryArray) {
        teaCategoryLabel.text = teaCategory.teaCategoryLabel
    }
}
