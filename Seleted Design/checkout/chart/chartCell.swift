//
//  chartCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 23/05/1442 AH.
//

import UIKit

class chartCell: UITableViewCell {

    @IBOutlet weak var subtractBtn: UIView!
    @IBOutlet weak var addView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
        subtractBtn.layer.cornerRadius = 5
        self.subtractBtn.layer.cornerRadius = self.subtractBtn.frame.size.width / 2;
        self.subtractBtn.clipsToBounds = true
        
        addView.layer.cornerRadius = 5
        self.addView.layer.cornerRadius = self.addView.frame.size.width / 2;
        self.addView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
