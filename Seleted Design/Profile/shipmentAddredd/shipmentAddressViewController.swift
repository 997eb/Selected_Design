//
//  shipmentAddressViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 27/05/1442 AH.
//

import UIKit

class shipmentAddressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension shipmentAddressViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! shipmentCell
        cell.selectionStyle = .none

        return cell
    }
    
    
}
