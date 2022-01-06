//
//  walletViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit

class walletViewController: UIViewController {
    @IBOutlet weak var withdraw: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    let payment = ["1" , "2" , "3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "WALLET"
        
        withdraw.layer.cornerRadius = 5
        self.withdraw.layer.cornerRadius = self.withdraw.frame.size.width / 2;
        self.withdraw.clipsToBounds = true
        
        self.tableView.separatorInset = .zero
        self.tableView.separatorStyle = .none

    }
    
    
    

}

extension walletViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

       if indexPath.row == payment.count - 1 {
            let newCard = UIStoryboard.init(name: "addNewCard", bundle: Bundle.main).instantiateViewController(withIdentifier: "addNewCard") as! addNewCardViewController
   
           self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            
            self.navigationController?.pushViewController(newCard, animated: true)
        
        
       } else{
        let cell = tableView.cellForRow(at: indexPath) as! paymentMethodCell
        cell.visaImg.image = UIImage(named: "visaYellow.png")
       }
    
  }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return payment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! paymentMethodCell
        
      cell.selectionStyle = UITableViewCell.SelectionStyle.none

        
        if indexPath.row == payment.count - 1 {
            cell.cardNum.text = "ADD"
            cell.delete.layer.backgroundColor = UIColor.systemGreen.cgColor
            cell.imgDeleteView.image = UIImage(named: "addW.png")
          }
      
        return cell
        
    }
    



}
