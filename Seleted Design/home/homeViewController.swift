//
//  homeViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 06/05/1442 AH.
//

import UIKit
import Parchment

struct IconItem: PagingItem, Hashable, Comparable {
  
  let icon: String
  let index: Int
  let image: UIImage?

    init(icon: String,index: Int) {
    self.icon = icon
    self.index = index
    self.image = UIImage(named: icon)

  }
  
  static func <(lhs: IconItem, rhs: IconItem) -> Bool {
    return lhs.index < rhs.index
  }
}

class homeViewController: UIViewController {
    
    fileprivate let icons = [
        "sofa",
        "cupboards",
        "book",
        "storage",
        "lamp",
        "beds"
    ]
    
    @IBOutlet weak var upperView: UIView!

    override func viewDidAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upperView.layer.shadowColor = UIColor.lightGray.cgColor
        upperView.layer.shadowOpacity = 3
        upperView.layer.shadowOffset = CGSize.zero
        upperView.layer.shadowRadius = 5
        
        navigationController?.isNavigationBarHidden = true
        
        let pagingViewController = PagingViewController()
        pagingViewController.dataSource = self
               
        pagingViewController.register(IconPagingCell.self, for: IconItem.self)
        pagingViewController.menuItemSize = .fixed(width: 150, height: 50)
        pagingViewController.menuItemSpacing = 10
        pagingViewController.select(pagingItem: IconItem(icon: icons[0], index: 0))
  
        addChild(pagingViewController)
        view.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
          
          
          pagingViewController.view.translatesAutoresizingMaskIntoConstraints = false
              
          NSLayoutConstraint.activate([
              pagingViewController.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
                pagingViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                pagingViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 25),
                pagingViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: 25),
          ])
      }
    
    
    @IBAction func openNotification(_ sender: Any) {
        
        print("clicked")
       let notification = UIStoryboard.init(name: "notification", bundle: Bundle.main).instantiateViewController(withIdentifier: "notification") as! notificationViewController
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
         self.navigationController?.pushViewController(notification, animated: true)
    }
    
    @IBAction func checkout(_ sender: Any) {
        
       let checkout = UIStoryboard.init(name: "checkout", bundle: Bundle.main).instantiateViewController(withIdentifier: "checkout") as! checkoutViewController
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
         self.navigationController?.pushViewController(checkout, animated: true)
    }
    
    }

    extension homeViewController: PagingViewControllerDataSource {
      
      func pagingViewController(_: PagingViewController, pagingItemAt index: Int) -> PagingItem {
          return IconItem(icon: icons[index], index: index)

      }
      
      func pagingViewController(_: PagingViewController, viewControllerAt index: Int) -> UIViewController {
        return contentViewController(title: icons[index].capitalized)
      }
      
      func numberOfViewControllers(in pagingViewController: PagingViewController) -> Int {
          return icons.count
      }
      
    }
        
      
    
    



