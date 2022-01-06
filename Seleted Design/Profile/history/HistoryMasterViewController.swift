//
//  HistoryMasterViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit
import SnapKit

class HistoryMasterViewController: UIViewController {
    
    
  //  @IBOutlet weak var upperView: UIView!
    @IBOutlet weak var purchasedContainer: UIView!
    @IBOutlet weak var inProgressContainer: UIView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    @IBAction func controlSegment(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
        UIView.animate(withDuration: 0.5, animations: {
            self.inProgressContainer.alpha = 0.0
            self.purchasedContainer.alpha = 1.0
        })
        } else{
            
            UIView.animate(withDuration: 0.5, animations: {
                self.inProgressContainer.alpha = 1.0
                self.purchasedContainer.alpha = 0.0
            })
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "HISTORY"
        
        segmentControl.historySegment()



    }
    
}
    
    extension UIView {
        
        func addShadow(shadowColor: UIColor, offSet: CGSize, opacity: Float, shadowRadius: CGFloat, cornerRadius: CGFloat, corners: UIRectCorner, fillColor: UIColor = .white) {
            
            let shadowLayer = CAShapeLayer()
            let size = CGSize(width: cornerRadius, height: cornerRadius)
            let cgPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size).cgPath //1
            shadowLayer.path = cgPath //2
            shadowLayer.fillColor = fillColor.cgColor //3
            shadowLayer.shadowColor = shadowColor.cgColor //4
            shadowLayer.shadowPath = cgPath
            shadowLayer.shadowOffset = offSet //5
            shadowLayer.shadowOpacity = opacity
            shadowLayer.shadowRadius = shadowRadius
            self.layer.addSublayer(shadowLayer)
        }
    }



extension UISegmentedControl{
    func historySegment(){
        let backgroundImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: self.bounds.size)
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)

        let deviderImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: CGSize(width: 1.0, height: self.bounds.size.height))
        self.setDividerImage(deviderImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        
        
        
        let font2 = UIFont.systemFont(ofSize: 20)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font2 , NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        
        let font = UIFont.systemFont(ofSize: 16)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font , NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
    }
}
