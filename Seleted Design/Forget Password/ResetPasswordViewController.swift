//
//  ResetPasswordViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 06/05/1442 AH.
//

import UIKit

class ResetPasswordViewController: UIViewController {
    @IBOutlet weak var phoneNum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpeBorder()

        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
          self.navigationController!.navigationBar.shadowImage = UIImage()
          self.navigationController!.navigationBar.isTranslucent = true
    }
    
    func setUpeBorder(){
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0.0, y: phoneNum.frame.height - 1, width: phoneNum.frame.width, height: 1.0)
        bottomLine2.backgroundColor = UIColor.white.cgColor
        phoneNum.borderStyle = UITextField.BorderStyle.none
        phoneNum.layer.addSublayer(bottomLine2)
        
   
       
    }
    

}
