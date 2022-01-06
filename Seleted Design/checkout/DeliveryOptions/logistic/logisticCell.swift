//
//  logisticCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 23/05/1442 AH.
//

import UIKit

class logisticCell: UITableViewCell {

    @IBOutlet weak var option: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var checkBox: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCyrcle()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
