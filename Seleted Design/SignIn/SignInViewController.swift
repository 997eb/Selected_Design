//
//  File.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 06/05/1442 AH.
//

import UIKit
import AudioToolbox

class SignInViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var phoneNum: UITextField!
    
    
   
    @IBAction func login(_ sender: Any) {
        
      //  AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        setUpeBorder()
        

       
    }
    
    func setUpeBorder(){
        let bottomLine2 = CALayer()
        bottomLine2.frame = CGRect(x: 0.0, y: phoneNum.frame.height - 1, width: phoneNum.frame.width, height: 1.0)
        bottomLine2.backgroundColor = UIColor.white.cgColor
        phoneNum.borderStyle = UITextField.BorderStyle.none
        phoneNum.layer.addSublayer(bottomLine2)
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: password.frame.height - 1, width: password.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.white.cgColor
        password.borderStyle = UITextField.BorderStyle.none
        password.layer.addSublayer(bottomLine)
       
    }


}

