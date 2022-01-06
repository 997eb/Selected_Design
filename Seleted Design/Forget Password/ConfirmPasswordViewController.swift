//
//  ConfirmPasswordViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 06/05/1442 AH.
//

import UIKit

class ConfirmPasswordViewController: UIViewController {

    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var newPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpeBorder()

        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
          self.navigationController!.navigationBar.shadowImage = UIImage()
          self.navigationController!.navigationBar.isTranslucent = true
    }
    
    @IBAction func confirm(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    func setUpeBorder(){
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0.0, y: confirmPassword.frame.height - 1, width: confirmPassword.frame.width, height: 1.0)
        bottomLine2.backgroundColor = UIColor.white.cgColor
        confirmPassword.borderStyle = UITextField.BorderStyle.none
        confirmPassword.layer.addSublayer(bottomLine2)
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: newPassword.frame.height - 1, width: newPassword.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.white.cgColor
        newPassword.borderStyle = UITextField.BorderStyle.none
        newPassword.layer.addSublayer(bottomLine)
       
    }


}
