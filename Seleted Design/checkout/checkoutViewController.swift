//
//  checkoutViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 22/05/1442 AH.
//

import UIKit

class checkoutViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = false
        navigationItem.title = "MY CHART"
        
        tableView.separatorInset = .zero
        tableView.separatorStyle = .none

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! checkOutCell
        return cell
    }


}
