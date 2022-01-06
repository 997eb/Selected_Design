//
//  deliveryOptionsViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 22/05/1442 AH.
//

import UIKit

class deliveryOptionsViewController: UIViewController {

 
    @IBOutlet weak var fromStoreLine: UIView!
    @IBOutlet weak var logistic: UIView!
    @IBOutlet weak var FromStore: UIView!
    @IBOutlet weak var logisticLine: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.logistic.isHidden = true
        self.logisticLine.isHidden = true
        
        self.FromStore.isHidden = false
        self.fromStoreLine.isHidden = false
           
    }
    
    
    @IBAction func deliveryFromStore(_ sender: Any) {
        
        self.logistic.isHidden = true
        self.logisticLine.isHidden = true
        
        self.FromStore.isHidden = false
        self.fromStoreLine.isHidden = false
        
    }
    
    @IBAction func logisticDelivery(_ sender: Any) {
     
        self.logistic.isHidden = false
        self.logisticLine.isHidden = false
        
        self.FromStore.isHidden = true
        self.fromStoreLine.isHidden = true
        
    }

}
