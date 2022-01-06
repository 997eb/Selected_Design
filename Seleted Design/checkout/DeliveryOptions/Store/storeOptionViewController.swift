//
//  storeOptionViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 23/05/1442 AH.
//

import UIKit

class storeOptionViewController: UIViewController{
    
    let option = ["Deliver & Installation" , "Deliver & Dissemble & Install" , "Deliver Only"]
    let prices = ["231" , "787" , "1500"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorInset = .zero
        self.tableView.separatorStyle = .none

    }


}

extension storeOptionViewController: UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return option.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! storeOptionCell
        
        cell.optionLabel.text = self.option[indexPath.row]
        cell.priceLabel.text = self.prices[indexPath.row]
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! storeOptionCell
        
        cell.checkBox.layer.borderWidth = 0
        cell.checkBox.layer.backgroundColor = UIColor.systemYellow.cgColor

       
    }
    
}
