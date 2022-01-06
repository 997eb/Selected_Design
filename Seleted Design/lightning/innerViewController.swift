//
//  innerViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 15/05/1442 AH.
//

import UIKit

class innerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
  
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back.png"), style: .done, target: self, action: #selector(addTapped))
        
        navigationController?.isNavigationBarHidden = false
         navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
              navigationController?.navigationBar.shadowImage = UIImage()
       
           UINavigationBar.appearance().isTranslucent = true
     
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }


    @IBAction func designerProfile(_ sender: Any) {
        
       let inner = UIStoryboard.init(name: "designer", bundle: Bundle.main).instantiateViewController(withIdentifier: "designer") as! designerViewController
             self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
            self.navigationController?.pushViewController(inner, animated: true)
    }
    
    @objc func addTapped(sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
}


extension innerViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)  as! innerCell
        
        let images = [UIImage(named: "inner.png") , UIImage(named: "inner.png")]
        cell.innerImg.image = images[indexPath.row]
            
         return cell
    }
}
