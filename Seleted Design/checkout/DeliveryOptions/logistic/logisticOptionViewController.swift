//
//  logisticOptionViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 23/05/1442 AH.
//

import UIKit

class logisticOptionViewController: UIViewController {

        
        let option = ["Deliver & Installation" , "Deliver & Dissemble & Install" , "Deliver Only"]
        let prices = ["200" , "300" , "400"]
        
        @IBOutlet weak var tableView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.tableView.separatorInset = .zero
            self.tableView.separatorStyle = .none

        }


    }

    extension logisticOptionViewController: UITableViewDelegate , UITableViewDataSource {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return option.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! logisticCell
            
            cell.option.text = self.option[indexPath.row]
            cell.price.text = self.prices[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            
            return cell
        }
        
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let cell = tableView.cellForRow(at: indexPath) as! logisticCell
            
            cell.checkBox.layer.borderWidth = 0
            cell.checkBox.layer.backgroundColor = UIColor.systemYellow.cgColor

           
        }
        
    }



