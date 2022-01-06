//
//  colorsDetailsCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 20/05/1442 AH.
//

import UIKit

class colorsDetailsCell: UITableViewCell {
    
    @IBOutlet weak var colorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        colorView.layer.cornerRadius = 5
        colorView.backgroundColor = UIColor.red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
