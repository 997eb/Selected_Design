//
//  OTPverificationViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 06/05/1442 AH.
//

import UIKit

class OTPverificationViewController: UIViewController {

    @IBOutlet weak var otp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpeBorder()

        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
          self.navigationController!.navigationBar.shadowImage = UIImage()
          self.navigationController!.navigationBar.isTranslucent = true
    }
    
    func setUpeBorder(){
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0.0, y: otp.frame.height - 1, width: otp.frame.width, height: 1.0)
        bottomLine2.backgroundColor = UIColor.white.cgColor
        otp.borderStyle = UITextField.BorderStyle.none
        otp.layer.addSublayer(bottomLine2)
        
   
       
    }
    


}
