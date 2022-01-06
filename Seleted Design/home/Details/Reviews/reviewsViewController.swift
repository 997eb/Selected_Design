//
//  reviewsViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 20/05/1442 AH.
//

import UIKit

class reviewsViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! reviewsCell
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorInset = .zero
        tableView.separatorStyle = .none
    }
    

}
