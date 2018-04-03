//
//  CustomCell.swift
//  TestSegmentedControl
//
//  Created by Jose David Bustos H on 03-04-18.
//  Copyright © 2018 Jose David Bustos H. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var accesoryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit(text : String , accessoryText : String)
    {
        self.titleLabel.text = text
        self.accesoryLabel.text = accessoryText
        
        self.titleLabel.textColor = UIColor.white
        self.contentView.backgroundColor = UIColor.darkGray
    
    }
}
