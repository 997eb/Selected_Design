//
//  historyViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit

class inProgressViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! historyCell
        cell.selectionStyle = .none

        return cell
        

    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let uploadToStore = UIStoryboard.init(name: "uploadinStore", bundle: Bundle.main).instantiateViewController(withIdentifier: "uploadInStore") as! uploadInStoreViewController

       self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
        self.navigationController?.pushViewController(uploadToStore, animated: true)
    }
}
