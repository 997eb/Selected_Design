//
//  inProgressOrderViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 08/05/1442 AH.
//

import UIKit

class inProgressOrderViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! inProgressOrderCell
        cell.selectedBackgroundView = .none
        return cell
        

    }
}
