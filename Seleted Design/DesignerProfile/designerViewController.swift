//
//  designerViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 16/05/1442 AH.


import UIKit

class designerViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var followBtn: UIButton!
    override func viewWillAppear(_ animated: Bool) {
       
        
        navigationController?.isNavigationBarHidden = false
         navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
              navigationController?.navigationBar.shadowImage = UIImage()
       
           UINavigationBar.appearance().isTranslucent = false

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)  as! designerCell
        
        return cell
    }
    

    @IBAction func follow(_ sender: Any) {
        
        followBtn.backgroundColor = UIColor(red: 0.98, green: 0.84, blue: 0.43, alpha: 1.00)
        followBtn.setTitle("Following", for: .normal)
    }
    

    @IBAction func openFollowing(_ sender: Any) {
        
        let followers = UIStoryboard.init(name: "followers", bundle: Bundle.main).instantiateViewController(withIdentifier: "followers") as! followersMasterViewController
         
          self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
         self.navigationController?.pushViewController(followers, animated: true)
        
    }
    
    @IBAction func openFollowers(_ sender: Any) {
        
        let followers = UIStoryboard.init(name: "followers", bundle: Bundle.main).instantiateViewController(withIdentifier: "followers") as! followersMasterViewController
         
          self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
         self.navigationController?.pushViewController(followers, animated: true)
        
    }
}
