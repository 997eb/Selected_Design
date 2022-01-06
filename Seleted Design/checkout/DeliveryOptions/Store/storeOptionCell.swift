//
//  storeOptionCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 23/05/1442 AH.
//

import UIKit

class storeOptionCell: UITableViewCell {

    @IBOutlet weak var checkBox: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var optionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCyrcle()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpCyrcle(){
        
        checkBox.layer.borderColor = UIColor.systemYellow.cgColor
        checkBox.layer.borderWidth = 2
        checkBox.layer.backgroundColor = UIColor.white.cgColor
        checkBox.layer.cornerRadius = 5
        self.checkBox.layer.cornerRadius = self.checkBox.frame.size.width / 2;
        self.checkBox.clipsToBounds = true
        
   
    }

}
