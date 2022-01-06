//
//  contentViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 22/05/1442 AH.
//

import UIKit

class contentViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    
    var images = [UIImage(named: "home1.png"), UIImage(named: "home2.png"),UIImage(named: "home3.png"),UIImage(named: "home3.png"),UIImage(named: "home4.png"),UIImage(named: "home5.png"),UIImage(named: "homecellimg.png"),UIImage(named: "home5.png"),UIImage(named: "homecellimg.png")]
    
    var myCollectionView:UICollectionView?
    @IBOutlet weak var collictionView: UICollectionView!

                func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                    return images.count
                }
                
                func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

                    let myCell = collectionView.dequeueReusableCell(withReuseIdentifier:homeCell.reuseIdentifier, for: indexPath) as! homeCell
                    
                    myCell.imageView.image = images[indexPath.row]
                    myCell.contentView.layer.cornerRadius = 5

                    return myCell
                }
                
                    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                      let details = UIStoryboard.init(name: "details", bundle: Bundle.main).instantiateViewController(withIdentifier: "details") as! detaiilsViewController
                        
                         self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
                        self.navigationController?.pushViewController(details, animated: true)
                    }
                
                
              convenience init(index: Int) {
                self.init(title: "View \(index)", content: "\(index)")
              }
              
              convenience init(title: String) {
                self.init(title: title, content: title)
              }
                
    
        
      init(title: String, content: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
        
        let view = UIView()
               view.backgroundColor = .clear
               
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        //layout.sectionInset = UIEdgeInsets(top:20, left: 0, bottom: 50, right: 50)
        layout.sectionInset = UIEdgeInsets(top:20, left: 0, bottom: 50, right: 50)
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
       // layout.itemSize = CGSize(width: 175, height: 210)
        layout.itemSize = CGSize(width: 175, height: 210)


               myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView?.register(homeCell.self, forCellWithReuseIdentifier: homeCell.reuseIdentifier)
        
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




