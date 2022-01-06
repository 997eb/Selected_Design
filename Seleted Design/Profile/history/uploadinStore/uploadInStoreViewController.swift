//
//  uploadInStoreViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 29/05/1442 AH.
//

import UIKit

class uploadInStoreViewController: UIViewController {

    @IBOutlet weak var priceView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        priceView.layer.borderColor = UIColor.black.cgColor
        
        priceView.layer.borderWidth = 0.4
        
        
    }

}
