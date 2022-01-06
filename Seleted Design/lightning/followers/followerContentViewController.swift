//
//  followerContentViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 15/05/1442 AH.
//

import UIKit

final class followerContentViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{
    
    var images = [UIImage(named: "punlic2.png"), UIImage(named: "followesCell.png"),UIImage(named: "punlic2.png"),UIImage(named: "followesCell.png"),UIImage(named: "punlic2.png"),UIImage(named: "followesCell.png"),UIImage(named: "punlic2.png"),UIImage(named: "followesCell.png")]

            func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return images.count
            }
            
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

                let myCell = collectionView.dequeueReusableCell(withReuseIdentifier:followersCell.reuseIdentifier, for: indexPath) as! followersCell
                myCell.contentView.layer.cornerRadius = 5
                myCell.imageView.image = images[indexPath.row]
                return myCell
            }
            

                func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                    let inner = UIStoryboard.init(name: "inner", bundle: Bundle.main).instantiateViewController(withIdentifier: "inner") as! innerViewController
                        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
                        self.navigationController?.pushViewController(inner, animated: true)
                }
            
            
          convenience init(index: Int) {
            self.init(title: "View \(index)", content: "\(index)")
          }
          
          convenience init(title: String) {
            self.init(title: title, content: title)
          }
            
            var myCollectionView:UICollectionView?
           
            @IBOutlet weak var collictionView: UICollectionView!
    
  init(title: String, content: String) {
    super.init(nibName: nil, bundle: nil)
    self.title = title
    
    let view = UIView()
           view.backgroundColor = .clear
           
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.sectionInset = UIEdgeInsets(top:20, left: 0, bottom: 50, right: 50)
    layout.minimumLineSpacing = 1
    layout.minimumInteritemSpacing = 1
    layout.itemSize = CGSize(width: 175, height: 210)
           myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
    myCollectionView?.register(followersCell.self, forCellWithReuseIdentifier: followersCell.reuseIdentifier)
    
           myCollectionView?.backgroundColor = UIColor.white
           myCollectionView?.dataSource = self
           myCollectionView?.delegate = self
    
           view.addSubview(myCollectionView ?? UICollectionView())
           
           self.view = view
    
  }
          
          required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
          }
        }


