//
//  orderViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit
import SnapKit

class orderMasterViewController: UIViewController {

   // @IBOutlet weak var upperView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var canceled: UIView!
    @IBOutlet weak var inProgress: UIView!
    @IBOutlet weak var delivered: UIView!
    
    @IBAction func segmentControl(_ sender:UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
            
        UIView.animate(withDuration: 0.5, animations: {
            
            self.canceled.alpha = 0.0
            self.delivered.alpha = 0.0
            self.inProgress.alpha = 1.0
        })
            
        } else if (sender.selectedSegmentIndex == 1) {
            
            UIView.animate(withDuration: 0.5, animations: {
                
                self.canceled.alpha = 0.0
                self.delivered.alpha = 1.0
                self.inProgress.alpha = 0.0
            })
            
        } else {
            
            UIView.animate(withDuration: 0.5, animations: {
            
            self.canceled.alpha = 1.0
            self.delivered.alpha = 0.0
            self.inProgress.alpha = 0.0
                
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ORDER"


        segmentControl.removeBorder()

        
        self.canceled.alpha = 0.0
        self.delivered.alpha = 0.0
        self.inProgress.alpha = 1.0

    }
   
}

extension UIColor {
    
    @nonobjc class var TSPrimary: UIColor {
        
        UIColor(red: 0.92, green: 0.77, blue: 0.34, alpha: 1.00)
    }
    
    
    @nonobjc class var TSPrimary2: UIColor {
        
        UIColor(red: 0.92, green: 0.77, blue: 0.34, alpha: 0.4)
    }
    
}

extension UISegmentedControl{
    func removeBorder(){
        let backgroundImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: self.bounds.size)
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)

        let deviderImage = UIImage.getColoredRectImageWith(color: UIColor.white.cgColor, andSize: CGSize(width: 1.0, height: self.bounds.size.height))
        self.setDividerImage(deviderImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        
        
        
        let font2 = UIFont.boldSystemFont(ofSize: 20)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font2 , NSAttributedString.Key.foregroundColor: UIColor.TSPrimary], for: .selected)
        
        let font = UIFont.boldSystemFont(ofSize: 16)
        self.setTitleTextAttributes([NSAttributedString.Key.font: font , NSAttributedString.Key.foregroundColor: UIColor.TSPrimary2], for: .normal)
    }
}

extension UIImage{

    class func getColoredRectImageWith(color: CGColor, andSize size: CGSize) -> UIImage{
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        let graphicsContext = UIGraphicsGetCurrentContext()
        graphicsContext?.setFillColor(color)
        let rectangle = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        graphicsContext?.fill(rectangle)
        let rectangleImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return rectangleImage!
    }
}
