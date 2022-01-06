//
//  lightningMasterViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 15/05/1442 AH.
//

import UIKit



class lightningMasterViewController: UIViewController {


    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var publicc: UIView!
    @IBOutlet weak var followers: UIView!
    @IBOutlet weak var upperView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.publicc.alpha = 0.0
        self.followers.alpha = 1.0
        upperView.layer.shadowColor = UIColor.lightGray.cgColor
        upperView.layer.shadowOpacity = 3
        upperView.layer.shadowOffset = CGSize.zero
        upperView.layer.shadowRadius = 5
        
       segmentControl.removeBorderLighting()

        navigationController?.isNavigationBarHidden = true
        
     
    }
    

    @IBAction func controlSegment(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
        UIView.animate(withDuration: 0.5, animations: {
            self.publicc.alpha = 0.0
            self.followers.alpha = 1.0
        })
        } else{
            
            UIView.animate(withDuration: 0.5, animations: {
                self.publicc.alpha = 1.0
                self.followers.alpha = 0.0
            })
            
        }
    }

}

extension UISegmentedControl{
    func removeBorderLighting(){
        let backgroundImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: self.bounds.size)
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)

        let deviderImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: CGSize(width: 1.0, height: self.bounds.size.height))
        self.setDividerImage(deviderImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        
        let font2 = UIFont.systemFont(ofSize: 25)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font2 , NSAttributedString.Key.foregroundColor: UIColor.TSPrimary], for: .selected)
        
        let font = UIFont.systemFont(ofSize:20)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font , NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)
    }
}

