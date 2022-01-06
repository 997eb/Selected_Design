//
//  followerInnerCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 16/05/1442 AH.
//

import UIKit

class followerInnerCell: UITableViewCell {

    @IBOutlet weak var followBtn: UIButton!
    @IBOutlet weak var profile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
     
     
        followBtn.layer.borderColor = UIColor.black.cgColor
        followBtn.layer.borderWidth = 0.3
        followBtn.layer.backgroundColor = UIColor.white.cgColor
        followBtn.layer.cornerRadius = 5
        self.profile.layer.cornerRadius = self.profile.frame.size.width / 2;
        self.profile.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
