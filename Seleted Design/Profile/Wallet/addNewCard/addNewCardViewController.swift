//
//  addNewCardViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 27/05/1442 AH.
//

import UIKit

class addNewCardViewController: UIViewController {
    @IBOutlet weak var cardNumberTF: UITextField!
    @IBOutlet weak var expiryDateTF: UITextField!
    @IBOutlet weak var cvvTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ADD NEW CARD"
        setUpeBorder()
    }



    func setUpeBorder(){
          let bottomLine = CALayer()
          bottomLine.frame = CGRect(x: 0.0, y: cardNumberTF.frame.height - 1, width: cardNumberTF.frame.width, height: 1.0)
          bottomLine.backgroundColor = UIColor.black.cgColor
          cardNumberTF.borderStyle = UITextField.BorderStyle.none
          cardNumberTF.layer.addSublayer(bottomLine)
          
          let bottomLine1 = CALayer()
          bottomLine1.frame = CGRect(x: 0.0, y: expiryDateTF.frame.height - 1, width: expiryDateTF.frame.width, height: 1.0)
          bottomLine1.backgroundColor = UIColor.black.cgColor
          expiryDateTF.borderStyle = UITextField.BorderStyle.none
          expiryDateTF.layer.addSublayer(bottomLine1)
      
          let bottomLine2 = CALayer()
          bottomLine2.frame = CGRect(x: 0.0, y: cvvTF.frame.height - 1, width: cvvTF.frame.width, height: 1.0)
          bottomLine2.backgroundColor = UIColor.black.cgColor
          cvvTF.borderStyle = UITextField.BorderStyle.none
          cvvTF.layer.addSublayer(bottomLine2)

         
      
      }
    
}
