//
//  withDrawViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 29/05/1442 AH.
//

import UIKit

class withDrawViewController: UIViewController {

 
    @IBOutlet weak var branchNameTF: UITextField!
    @IBOutlet weak var bankNameTF: UITextField!
    @IBOutlet weak var accountNumTF: UITextField!
    @IBOutlet weak var accountTitleTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpeBorder()

    }
    
    func setUpeBorder(){
          let bottomLine = CALayer()
          bottomLine.frame = CGRect(x: 0.0, y: branchNameTF.frame.height - 1, width: branchNameTF.frame.width, height: 1.0)
          bottomLine.backgroundColor = UIColor.lightGray.cgColor
        branchNameTF.borderStyle = UITextField.BorderStyle.none
        branchNameTF.layer.addSublayer(bottomLine)
          
          let bottomLine1 = CALayer()
          bottomLine1.frame = CGRect(x: 0.0, y: bankNameTF.frame.height - 1, width: bankNameTF.frame.width, height: 1.0)
          bottomLine1.backgroundColor = UIColor.lightGray.cgColor
        bankNameTF.borderStyle = UITextField.BorderStyle.none
        bankNameTF.layer.addSublayer(bottomLine1)
      
          let bottomLine2 = CALayer()
          bottomLine2.frame = CGRect(x: 0.0, y: accountNumTF.frame.height - 1, width: accountNumTF.frame.width, height: 1.0)
          bottomLine2.backgroundColor = UIColor.lightGray.cgColor
        accountNumTF.borderStyle = UITextField.BorderStyle.none
        accountNumTF.layer.addSublayer(bottomLine2)
      
          let bottomLine3 = CALayer()
          bottomLine3.frame = CGRect(x: 0.0, y: accountTitleTF.frame.height - 1, width: accountTitleTF.frame.width, height: 1.0)
          bottomLine3.backgroundColor = UIColor.lightGray.cgColor
        accountTitleTF.borderStyle = UITextField.BorderStyle.none
        accountTitleTF.layer.addSublayer(bottomLine3)
      
          let bottomLine4 = CALayer()
          bottomLine4.frame = CGRect(x: 0.0, y: accountTitleTF.frame.height - 1, width: accountTitleTF.frame.width, height: 1.0)
          bottomLine4.backgroundColor = UIColor.lightGray.cgColor
        accountTitleTF.borderStyle = UITextField.BorderStyle.none
        accountTitleTF.layer.addSublayer(bottomLine4)
         
      
      }

      



}
