//
//  detailsViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 20/05/1442 AH.
//

import UIKit

class detailsViewController: UIViewController , UITableViewDelegate, UITableViewDataSource  {
    
    var colors = [UIColor.green, UIColor.yellow, UIColor.red, UIColor.gray]
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! colorsDetailsCell
        cell.colorView.backgroundColor = self.colors[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = false


    }
    

}
