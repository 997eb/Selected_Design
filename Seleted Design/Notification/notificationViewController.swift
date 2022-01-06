//
//  notificationViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 14/05/1442 AH.
//

import UIKit

class notificationViewController: UIViewController{
    @IBOutlet weak var tableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNav()
        
       // upperView.addShadow(shadowColor: .lightGray, offSet: .zero, opacity: 3, shadowRadius: 5.0, cornerRadius: 30, corners: [.bottomRight, .bottomLeft], fillColor: .white)
        
        tableView.separatorInset = .zero
        
    }
    
   func setUpNav(){
    navigationController?.isNavigationBarHidden = false
     navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
          navigationController?.navigationBar.shadowImage = UIImage()
   
       UINavigationBar.appearance().isTranslucent = false
    
    navigationItem.title = "NOTIFICATION"
        
    }


}


extension notificationViewController: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! notificationCell
        
        return cell
    }
    
}
