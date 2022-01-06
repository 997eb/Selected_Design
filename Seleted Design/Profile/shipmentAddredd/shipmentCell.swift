//
//  shipmentCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 27/05/1442 AH.
//

import UIKit

class shipmentCell: UITableViewCell {
    
    @IBOutlet weak var defaultCheckBox: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        defaultCheckBox.layer.borderColor = UIColor.black.cgColor
        defaultCheckBox.layer.borderWidth = 4
        defaultCheckBox.layer.backgroundColor = UIColor(red: 0.99, green: 0.93, blue: 0.75, alpha: 1.00).cgColor

        defaultCheckBox.layer.cornerRadius = 5
        self.defaultCheckBox.layer.cornerRadius = self.defaultCheckBox.frame.size.width / 2;
        self.defaultCheckBox.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
