//
//  paymentMethodCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 26/05/1442 AH.
//

import UIKit

class paymentMethodCell: UITableViewCell {

    @IBOutlet weak var imgDeleteView: UIImageView!
    @IBOutlet weak var visaImg: UIImageView!
    @IBOutlet weak var cardNum: UILabel!
    @IBOutlet weak var delete: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        delete.layer.cornerRadius = 5
        self.delete.layer.cornerRadius = self.delete.frame.size.width / 2;
        self.delete.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
