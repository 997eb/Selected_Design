//
//  likeViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit

class likeViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
 //   @IBOutlet weak var upperView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "FAVORATE"

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! FavorateCell
        cell.selectionStyle = .none
        return cell

    }
}
