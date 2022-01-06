//
//  commentsViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 20/05/1442 AH.
//

import UIKit

class commentsViewController: UIViewController , UITabBarDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    @IBOutlet weak var writeView: UIView!
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! commentCell
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        writeView.roundCorners(corners: [.topLeft, .topRight], radius: 40.0)

        tableView.separatorInset = .zero
        tableView.separatorStyle = .none
    }
    

}
