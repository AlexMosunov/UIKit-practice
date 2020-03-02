//
//  TestTableViewCell.swift
//  tableView-lesson
//
//  Created by Alex Mosunov on 3/2/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
