//
//  deliverdOrderViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 08/05/1442 AH.
//

import UIKit

class deliverdOrderViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! DeliveredOrderCell
        
        return cell
        

    }
}
