//
//  SignUpViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 06/05/1442 AH.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var phoneNum: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var userName: UITextField!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpeBorder()
    }
    
  func setUpeBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: confirmPassword.frame.height - 1, width: confirmPassword.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.white.cgColor
        confirmPassword.borderStyle = UITextField.BorderStyle.none
        confirmPassword.layer.addSublayer(bottomLine)
        
        let bottomLine1 = CALayer()
        bottomLine1.frame = CGRect(x: 0.0, y: password.frame.height - 1, width: password.frame.width, height: 1.0)
        bottomLine1.backgroundColor = UIColor.white.cgColor
        password.borderStyle = UITextField.BorderStyle.none
        password.layer.addSublayer(bottomLine1)
    
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0.0, y: phoneNum.frame.height - 1, width: phoneNum.frame.width, height: 1.0)
        bottomLine2.backgroundColor = UIColor.white.cgColor
        phoneNum.borderStyle = UITextField.BorderStyle.none
        phoneNum.layer.addSublayer(bottomLine2)
    
        let bottomLine3 = CALayer()
        bottomLine3.frame = CGRect(x: 0.0, y: email.frame.height - 1, width: email.frame.width, height: 1.0)
        bottomLine3.backgroundColor = UIColor.white.cgColor
        email.borderStyle = UITextField.BorderStyle.none
        email.layer.addSublayer(bottomLine3)
    
        let bottomLine4 = CALayer()
        bottomLine4.frame = CGRect(x: 0.0, y: userName.frame.height - 1, width: userName.frame.width, height: 1.0)
        bottomLine4.backgroundColor = UIColor.white.cgColor
        userName.borderStyle = UITextField.BorderStyle.none
        userName.layer.addSublayer(bottomLine4)
       
    
    }

    

}
