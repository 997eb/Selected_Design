//
//  aboutViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit

class aboutViewController: UIViewController {

 //   @IBOutlet weak var upperView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "ABOUT US"
        
       /* upperView.layer.shadowColor = UIColor.lightGray.cgColor
        upperView.layer.shadowOpacity = 3
        upperView.layer.shadowOffset = CGSize.zero
        upperView.layer.shadowRadius = 5
        */
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
    
        UINavigationBar.appearance().isTranslucent = true
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
