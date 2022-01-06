//
//  userFollowingCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 16/05/1442 AH.
//

import UIKit

class userFollowingCell: UITableViewCell {

    @IBOutlet weak var follow: UIButton!
    @IBOutlet weak var profile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        follow.layer.borderColor = UIColor.black.cgColor
        follow.layer.borderWidth = 0.3
        follow.layer.backgroundColor = UIColor.white.cgColor
        follow.layer.cornerRadius = 5
        self.profile.layer.cornerRadius = self.profile.frame.size.width / 2;
        self.profile.clipsToBounds = true
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
