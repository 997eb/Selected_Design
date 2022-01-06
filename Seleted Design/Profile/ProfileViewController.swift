//
//  ProfileViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.


import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var followersNum: UILabel!
    @IBOutlet weak var followerL: UILabel!
    @IBOutlet weak var followingL: UILabel!
    @IBOutlet weak var followingNum: UILabel!
    @IBOutlet weak var followersContainer: UIView!
    @IBOutlet weak var followingContainer: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var upperView: UIView!
   @IBOutlet weak var edit2: UIBarButtonItem!
   
    
    var titles = ["HISTORY" , "ORDERS" , "PAYMENT" , "FAVORATES" , "CONTACT US" , "ABOUT US"]
    var edittitles = ["EBTISAM Hassn" , "966583785188" , "change password" ,"Shipping Address", "Language"]
    var images = [ UIImage(named: "history.png") , UIImage(named: "order.png") , UIImage(named: "wallet.png") , UIImage(named: "like.png") , UIImage(named: "contact.png") , UIImage(named: "about.png") ]
    var editImages = [UIImage(named: "userEdit.png") , UIImage(named: "phoneNum.png") , UIImage(named: "lock.png") ,UIImage(named: "shipmentBlack.png"),  UIImage(named: "address-1.png")]
    var edit = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorInset = .zero

        tableView.isHidden = false
        followersContainer.isHidden = true
        followingContainer.isHidden = true
        
        upperView.addShadow(shadowColor: .lightGray, offSet: .zero, opacity: 3, shadowRadius: 5.0, cornerRadius: 30, corners: [.bottomRight, .bottomLeft], fillColor: .white)
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
    
        UINavigationBar.appearance().isTranslucent = false
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "edit.png"), style: .plain, target: self, action: #selector(addTapped))
 
    }

 
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let height: CGFloat = 100 //whatever height you want to add to the existing height
        let bounds = self.navigationController!.navigationBar.bounds
        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)

        tableView.isHidden = false
        followersContainer.isHidden = true
        followingContainer.isHidden = true
                
    }

    
    @objc func addTapped(sender: UIBarButtonItem) {
        if edit == 0 {
            edit = 1
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "done.png"), style: .plain, target: self, action: #selector(addTapped))
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: ""), style: .plain, target: self, action:nil)
            tableView.reloadData()
            
        }else {
            edit = 0
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "edit.png"), style: .plain, target: self, action: #selector(addTapped))
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "signOut.png"), style: .plain, target: self, action:nil)
            tableView.reloadData()
            
        }
       

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if edit == 0 {

            return titles.count
        }
        else {
            return edittitles.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! profileCateCell
        
        cell.cateName?.text = titles[indexPath.item]
        cell.cateImg?.image =  images[indexPath.item]
        

     if edit == 0 {
            
            cell.cateName?.text = titles[indexPath.item]
            cell.cateImg?.image =  images[indexPath.item]
            cell.cateName.isUserInteractionEnabled = false
        
           followersNum.isHidden = false
           followerL.isHidden = false
           followingL.isHidden = false
           followingNum.isHidden = false
        }
        else {
            cell.cateName?.text = edittitles[indexPath.item]
            cell.cateImg?.image =  editImages[indexPath.item]
          //  cell.cateName.isUserInteractionEnabled = false
            followersNum.isHidden = true
            followerL.isHidden = true
            followingL.isHidden = true
            followingNum.isHidden = true
            
      
        }
      

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if edit == 0 {
        if indexPath.item == 0 {
            let history = UIStoryboard.init(name: "History", bundle: Bundle.main).instantiateViewController(withIdentifier: "history") as! HistoryMasterViewController
   
           self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            
            self.navigationController?.pushViewController(history, animated: true)

        }
        
        if indexPath.item == 1 {
            let order = UIStoryboard.init(name: "Order", bundle: Bundle.main).instantiateViewController(withIdentifier: "order") as! orderMasterViewController
            
            
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            self.navigationController?.pushViewController(order, animated: true)

        }
        if indexPath.item == 2 {
            let wallet = UIStoryboard.init(name: "Wallet", bundle: Bundle.main).instantiateViewController(withIdentifier: "wallet") as! walletViewController
            
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            self.navigationController?.pushViewController(wallet, animated: true)

        }
        
        if indexPath.item == 3 {
            let like = UIStoryboard.init(name: "Like", bundle: Bundle.main).instantiateViewController(withIdentifier: "like") as! likeViewController
            
             self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            self.navigationController?.pushViewController(like, animated: true)

        }
        
        if indexPath.item == 4 {
            let contact = UIStoryboard.init(name: "Contact", bundle: Bundle.main).instantiateViewController(withIdentifier: "contact") as! contactViewController
            
                    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            self.navigationController?.pushViewController(contact, animated: true)

        }
        
        if indexPath.item == 5 {
            let about = UIStoryboard.init(name: "about", bundle: Bundle.main).instantiateViewController(withIdentifier: "about") as! aboutViewController
            
                    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            self.navigationController?.pushViewController(about, animated: true)

        }
            
        }else {
            
         if indexPath.item == 3 {
            
                let shipmentAddress = UIStoryboard.init(name: "shipmentAddress", bundle: Bundle.main).instantiateViewController(withIdentifier: "shipmentAddress") as! shipmentAddressViewController
                
                self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
                self.navigationController?.pushViewController(shipmentAddress, animated: true)
            

         }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! profileCateCell
            cell.cateName.isUserInteractionEnabled = true
         }

            
           
            
        }
        
        
    }

    @IBOutlet weak var openFollowers: UIButton!
    @IBOutlet weak var openFollowing: UIButton!
    
    @IBAction func openFollowing(_ sender: Any) {
        
        tableView.isHidden = true
        followersContainer.isHidden = true
        followingContainer.isHidden = false
        

        navigationItem.title = "FOLLOWING"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back.png"), style: .plain, target: self, action: #selector(addTapped2))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: ""), style: .plain, target: self, action:nil)
    }
    @IBAction func openFollowers(_ sender: Any) {

        navigationItem.title = "FOLLOWERS"

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back.png"), style: .plain, target: self, action: #selector(addTapped2))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: ""), style: .plain, target: self, action:nil)
        tableView.isHidden = true
        followersContainer.isHidden = false
        followingContainer.isHidden = true
    }
    
    @objc func addTapped2(sender: UIBarButtonItem) {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "edit.png"), style: .plain, target: self, action: #selector(addTapped))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "signOut.png"), style: .plain, target: self, action:nil)
        navigationItem.title = "PROFILE"
            tableView.isHidden = false
            followersContainer.isHidden = true
            followingContainer.isHidden = true
        
            tableView.reloadData()
            
        }
}

