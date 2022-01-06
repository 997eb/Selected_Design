//
//  chatViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 19/05/1442 AH.
//

import UIKit

class chatViewController: UIViewController {

    @IBOutlet weak var upperView: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
        self.setUpNav()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpNav()

    }

    
    func setUpNav(){
        
        
        
        upperView.layer.shadowColor = UIColor.lightGray.cgColor
        upperView.layer.shadowOpacity = 3
        upperView.layer.shadowOffset = CGSize.zero
        upperView.layer.shadowRadius = 5
            UINavigationBar.appearance().isTranslucent = true
        
    }
}
