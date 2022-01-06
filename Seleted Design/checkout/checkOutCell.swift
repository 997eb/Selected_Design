//
//  checkOutCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 22/05/1442 AH.
//

import UIKit

class checkOutCell: UITableViewCell {

    @IBOutlet weak var subBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()

        addBtn.layer.cornerRadius = 5
        self.addBtn.layer.cornerRadius = self.addBtn.frame.size.width / 2;
        self.addBtn.clipsToBounds = true
        
        subBtn.layer.cornerRadius = 5
        self.subBtn.layer.cornerRadius = self.subBtn.frame.size.width / 2;
        self.subBtn.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
