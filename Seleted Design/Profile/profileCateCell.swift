//
//  profileCateCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit

class profileCateCell: UITableViewCell {
    
    @IBOutlet weak var cateName: UITextField!
    @IBOutlet weak var cellContainer: UIView!
    @IBOutlet weak var cateImg: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellContainer.layer.cornerRadius = 10
      
    }

   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    
    }

}
