//
//  storeProfileViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 01/06/1442 AH.

import UIKit
import Parchment

class storeProfileViewController: UIViewController {
    
    
    @IBOutlet weak var followBtn: UIButton!
    fileprivate let icons = [
        "sofa",
        "cupboards",
        "book",
        "storage",
        "lamp",
        "beds"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        pagingViewController.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
          pagingViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
          pagingViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 25),
          pagingViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: 25),
    ])

}
    
    
    @IBAction func follow(_ sender: Any) {
        
        followBtn.backgroundColor = UIColor(red: 0.98, green: 0.84, blue: 0.43, alpha: 1.00)
        followBtn.setTitle("Following", for: .normal)
        
    }
    
}


extension storeProfileViewController: PagingViewControllerDataSource {
  
  func pagingViewController(_: PagingViewController, pagingItemAt index: Int) -> PagingItem {
      return IconItem(icon: icons[index], index: index)

  }
  
  func pagingViewController(_: PagingViewController, viewControllerAt index: Int) -> UIViewController {
    return storeProfileContentViewController(title: icons[index])
  }
  
  func numberOfViewControllers(in pagingViewController: PagingViewController) -> Int {
      return icons.count
  }
  
}
