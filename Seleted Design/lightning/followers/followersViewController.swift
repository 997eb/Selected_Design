//
//  followersViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 15/05/1442 AH.
//

import UIKit
import Parchment

class followersViewController: UIViewController {

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
        pagingViewController.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
          pagingViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
          pagingViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 25),
          pagingViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: 25),

    ])
    }
}


extension followersViewController: PagingViewControllerDataSource {
  
  func pagingViewController(_: PagingViewController, pagingItemAt index: Int) -> PagingItem {
      return IconItem(icon: icons[index], index: index)

  }
  
  func pagingViewController(_: PagingViewController, viewControllerAt index: Int) -> UIViewController {
    return followerContentViewController(title: icons[index].capitalized)
  }
  
  func numberOfViewControllers(in pagingViewController: PagingViewController) -> Int {
      return icons.count
  }
  
}
