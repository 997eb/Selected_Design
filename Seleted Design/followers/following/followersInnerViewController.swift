//
//  followersInnerViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 16/05/1442 AH.
//

import UIKit

class followersInnerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! followerInnerCell
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
