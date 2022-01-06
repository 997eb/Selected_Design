//
//  messagesViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 19/05/1442 AH.
//

import UIKit

class messagesViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var upperView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorInset = .zero
        self.tableView.separatorStyle = .none
        self.setUpNav()
    }



    func setUpNav(){
        
        
        upperView.addShadow(shadowColor: .lightGray, offSet: .zero, opacity: 3, shadowRadius: 5.0, cornerRadius: 30, corners: [.bottomRight, .bottomLeft], fillColor: .white)
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
    
        UINavigationBar.appearance().isTranslucent = true
        navigationItem.title = "MESSAGES"
    }
        
    }



extension messagesViewController :  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! messagesCell
        cell.selectionStyle = .none

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chat = UIStoryboard.init(name: "messages", bundle: Bundle.main).instantiateViewController(withIdentifier: "chat") as! chatViewController

       self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
        self.navigationController?.pushViewController(chat, animated: true)
    }
}
