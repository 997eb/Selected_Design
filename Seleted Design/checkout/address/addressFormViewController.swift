//
//  addressFormViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 22/05/1442 AH.
//

import UIKit

class addressFormViewController: UIViewController {

    @IBOutlet weak var houseNo: UITextField!
    @IBOutlet weak var buildingNo: UITextField!
    @IBOutlet weak var streetName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var city: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpeBorder()
        
    }

    
    func setUpeBorder(){
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: buildingNo.frame.height - 1, width: buildingNo.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        buildingNo.borderStyle = UITextField.BorderStyle.none
        buildingNo.layer.addSublayer(bottomLine)
        
        let bottomLine1 = CALayer()
        bottomLine1.frame = CGRect(x: 0.0, y: houseNo.frame.height - 1, width: houseNo.frame.width, height: 1.0)
        bottomLine1.backgroundColor = UIColor.lightGray.cgColor
        houseNo.borderStyle = UITextField.BorderStyle.none
        houseNo.layer.addSublayer(bottomLine1)
        
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0.0, y: streetName.frame.height - 1, width: streetName.frame.width, height: 1.0)
        bottomLine2.backgroundColor = UIColor.lightGray.cgColor
        streetName.borderStyle = UITextField.BorderStyle.none
        streetName.layer.addSublayer(bottomLine2)
        
        let bottomLine3 = CALayer()
        bottomLine3.frame = CGRect(x: 0.0, y: country.frame.height - 1, width: country.frame.width, height: 1.0)
        bottomLine3.backgroundColor = UIColor.lightGray.cgColor
        country.borderStyle = UITextField.BorderStyle.none
        country.layer.addSublayer(bottomLine3)
        
        let bottomLine4 = CALayer()
        bottomLine4.frame = CGRect(x: 0.0, y: city.frame.height - 1, width: city.frame.width, height: 1.0)
        bottomLine4.backgroundColor = UIColor.lightGray.cgColor
        city.borderStyle = UITextField.BorderStyle.none
        city.layer.addSublayer(bottomLine4)
        
        
       
    }
    

}
