//
//  followersMasterViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 16/05/1442 AH.
//

import UIKit

class followersMasterViewController: UIViewController {
    
    @IBOutlet weak var followeraV: UIView!
    @IBOutlet weak var followingV: UIView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var following: UIView!
    @IBOutlet weak var followers: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.following.alpha = 0.0
        self.followers.alpha = 1.0
        navigationItem.title = "FOLLOWERS"

        segmentControl.removeBorderFollowers()
    }

    
    
    @IBAction func controlSegment(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
        UIView.animate(withDuration: 0.5, animations: {
            self.following.alpha = 0.0
            self.followers.alpha = 1.0
            self.navigationItem.title = "FOLLOWERS"

            self.followingV.layer.backgroundColor = UIColor.lightGray.cgColor
            self.followeraV.layer.backgroundColor = UIColor.black.cgColor
        })
        } else{
            
            UIView.animate(withDuration: 0.5, animations: {
                self.followers.alpha = 0.0
                self.following.alpha = 1.0
                self.navigationItem.title = "FOLLOWING"
                self.followeraV.layer.backgroundColor = UIColor.lightGray.cgColor
                self.followingV.layer.backgroundColor = UIColor.black.cgColor
            })
            
        }
    }
    
}


extension UISegmentedControl{
    func removeBorderFollowers(){
        let backgroundImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: self.bounds.size)
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)

        let deviderImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: CGSize(width: 1.0, height: self.bounds.size.height))
        self.setDividerImage(deviderImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        
        let font2 = UIFont.systemFont(ofSize: 19)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font2 , NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .selected)
        
        let font = UIFont.systemFont(ofSize:16)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font , NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
    }
}

