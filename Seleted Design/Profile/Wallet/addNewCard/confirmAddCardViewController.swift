//
//  confirmAddCardViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 27/05/1442 AH.
//

import UIKit

class confirmAddCardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmAddCard(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
}
