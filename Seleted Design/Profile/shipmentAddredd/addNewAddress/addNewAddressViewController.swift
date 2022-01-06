//
//  addNewAddressViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 27/05/1442 AH.
//

import UIKit

class addNewAddressViewController: UIViewController {
    
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var zipCodeTF: UITextField!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var streetNameTF: UITextField!
    @IBOutlet weak var buildingTF: UITextField!
    @IBOutlet weak var houseNoTF: UITextField!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpeBorder()
    }
    
    
    @IBAction func done(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    func setUpeBorder(){
          let bottomLine = CALayer()
          bottomLine.frame = CGRect(x: 0.0, y: cityTF.frame.height - 1, width: cityTF.frame.width, height: 1.0)
          bottomLine.backgroundColor = UIColor.lightGray.cgColor
         cityTF.borderStyle = UITextField.BorderStyle.none
         cityTF.layer.addSublayer(bottomLine)
          
          let bottomLine1 = CALayer()
          bottomLine1.frame = CGRect(x: 0.0, y: zipCodeTF.frame.height - 1, width: zipCodeTF.frame.width, height: 1.0)
          bottomLine1.backgroundColor = UIColor.lightGray.cgColor
        zipCodeTF.borderStyle = UITextField.BorderStyle.none
        zipCodeTF.layer.addSublayer(bottomLine1)
      
          let bottomLine2 = CALayer()
          bottomLine2.frame = CGRect(x: 0.0, y: countryTF.frame.height - 1, width: countryTF.frame.width, height: 1.0)
          bottomLine2.backgroundColor = UIColor.lightGray.cgColor
        countryTF.borderStyle = UITextField.BorderStyle.none
        countryTF.layer.addSublayer(bottomLine2)
      
          let bottomLine3 = CALayer()
          bottomLine3.frame = CGRect(x: 0.0, y: streetNameTF.frame.height - 1, width: streetNameTF.frame.width, height: 1.0)
          bottomLine3.backgroundColor = UIColor.lightGray.cgColor
        streetNameTF.borderStyle = UITextField.BorderStyle.none
        streetNameTF.layer.addSublayer(bottomLine3)
      
          let bottomLine4 = CALayer()
          bottomLine4.frame = CGRect(x: 0.0, y: buildingTF.frame.height - 1, width: buildingTF.frame.width, height: 1.0)
          bottomLine4.backgroundColor = UIColor.lightGray.cgColor
        buildingTF.borderStyle = UITextField.BorderStyle.none
        buildingTF.layer.addSublayer(bottomLine4)
         
        
        let bottomLine5 = CALayer()
        bottomLine5.frame = CGRect(x: 0.0, y: houseNoTF.frame.height - 1, width: houseNoTF.frame.width, height: 1.0)
        bottomLine5.backgroundColor = UIColor.lightGray.cgColor
        houseNoTF.borderStyle = UITextField.BorderStyle.none
        houseNoTF.layer.addSublayer(bottomLine5)
      
      }
}
