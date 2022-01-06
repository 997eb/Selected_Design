//
//  filterViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 15/05/1442 AH.
//

import UIKit
import RangeSeekSlider

class filterViewController: UIViewController {
    
    @IBOutlet weak var upperView: UIView!

    @IBOutlet weak var highView: UIView!
    @IBOutlet weak var lowView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var nearView: UIView!


    @IBOutlet weak var nearToYou: UIButton!
    @IBOutlet weak var highToLow: UIButton!
    @IBOutlet weak var lowToHigh: UIButton!
    @IBOutlet weak var topRated: UIButton!
    
    @IBOutlet weak var threeDView: UIButton!
    @IBOutlet weak var twoDView: UIButton!
    @IBOutlet weak var range: RangeSeekSlider!
    
    var colors = [UIColor(red: 0.48, green: 0.24, blue: 0.51, alpha: 1.00)
, UIColor(red: 0.22, green: 0.47, blue: 0.48, alpha: 1.00)
, UIColor(red: 0.17, green: 0.17, blue: 0.18, alpha: 1.00)
, UIColor(red: 0.47, green: 0.46, blue: 0.48, alpha: 1.00)
, UIColor.white
, UIColor(red: 0.00, green: 0.93, blue: 0.94, alpha: 1.00)
, UIColor(red: 0.18, green: 0.18, blue: 0.65, alpha: 1.00)
, UIColor(red: 0.08, green: 0.40, blue: 0.83, alpha: 1.00)
, UIColor(red: 0.48, green: 0.24, blue: 0.51, alpha: 1.00)
, UIColor(red: 0.22, green: 0.47, blue: 0.48, alpha: 1.00)
, UIColor(red: 0.17, green: 0.17, blue: 0.18, alpha: 1.00)
, UIColor(red: 0.47, green: 0.46, blue: 0.48, alpha: 1.00)
, UIColor(red: 0.00, green: 0.93, blue: 0.94, alpha: 1.00)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpNav()
        self.setUpCyrcle()
        
            }
    
    @objc func addTapped(sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
    
   func setUpNav(){
    navigationController?.isNavigationBarHidden = false
     navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
          navigationController?.navigationBar.shadowImage = UIImage()
    
    self.navigationItem.setHidesBackButton(true, animated: true)
    
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "filter.png"), style: .done, target: self, action: #selector(addTapped))

    range.tintColor = UIColor.gray

       UINavigationBar.appearance().isTranslucent = false
    
    navigationItem.title = "FILTER"
    
  upperView.addShadow(shadowColor: .lightGray, offSet: .zero, opacity: 3, shadowRadius: 5.0, cornerRadius: 30, corners: [.bottomRight, .bottomLeft], fillColor: .white)
    
        
    }
    @IBAction func threeDBtn(_ sender: Any) {
        self.threeDView.backgroundColor = UIColor(red: 0.98, green: 0.84, blue: 0.43, alpha: 1.00)

    }
    
    @IBAction func twoDBtn(_ sender: Any) {
        self.twoDView.backgroundColor = UIColor(red: 0.98, green: 0.84, blue: 0.43, alpha: 1.00)
    }
    
    
    @IBAction func lowToHigh(_ sender: Any) {
        
        if lowToHigh.tag == 0 {
           lowToHigh.tag = 1
           lowView.layer.borderWidth = 0
           lowView.layer.backgroundColor = UIColor.systemYellow.cgColor
            
        } else{
            lowToHigh.tag = 0
            lowView.layer.borderWidth = 4
            lowView.layer.backgroundColor = UIColor.white.cgColor
            
        }
    }
    
    @IBAction func topRated(_ sender: Any) {
        if topRated.tag == 0 {
            topRated.tag = 1
            topView.layer.borderWidth = 0
            topView.layer.backgroundColor = UIColor.systemYellow.cgColor
            
        } else{
            topRated.tag = 0
            topView.layer.borderWidth = 4
            topView.layer.backgroundColor = UIColor.white.cgColor
            
        }
    }
    
    @IBAction func nearToYou(_ sender: Any) {
        if nearToYou.tag == 0 {
            nearToYou.tag = 1
            nearView.layer.borderWidth = 0
            nearView.layer.backgroundColor = UIColor.systemYellow.cgColor
            
        } else{
            nearToYou.tag = 0
            nearView.layer.borderWidth = 4
            nearView.layer.backgroundColor = UIColor.white.cgColor
            
        }
    }
    
    @IBAction func highToLow(_ sender: Any) {
        if highToLow.tag == 0 {
            highToLow.tag = 1
            highView.layer.borderWidth = 0
            highView.layer.backgroundColor = UIColor.systemYellow.cgColor
            
        } else{
            highToLow.tag = 0
            highView.layer.borderWidth = 4
            highView.layer.backgroundColor = UIColor.white.cgColor
            
    }
        
    }
    func setUpCyrcle(){
        
        highView.layer.borderColor = UIColor.systemYellow.cgColor
        highView.layer.borderWidth = 4
        highView.layer.backgroundColor = UIColor.white.cgColor
        highView.layer.cornerRadius = 5
        self.highView.layer.cornerRadius = self.highView.frame.size.width / 2;
        self.highView.clipsToBounds = true
        
        lowView.layer.borderColor = UIColor.systemYellow.cgColor
        lowView.layer.borderWidth = 4
        lowView.layer.backgroundColor = UIColor.white.cgColor
        lowView.layer.cornerRadius = 5
        self.lowView.layer.cornerRadius = self.lowView.frame.size.width / 2;
        self.lowView.clipsToBounds = true
        
        
        topView.layer.borderColor = UIColor.systemYellow.cgColor
        topView.layer.borderWidth = 4
        topView.layer.backgroundColor = UIColor.white.cgColor
        topView.layer.cornerRadius = 5
        self.topView.layer.cornerRadius = self.topView.frame.size.width / 2;
        self.topView.clipsToBounds = true
        
        
        nearView.layer.borderColor = UIColor.systemYellow.cgColor
        nearView.layer.borderWidth = 4
        nearView.layer.backgroundColor = UIColor.white.cgColor
        nearView.layer.cornerRadius = 5
        self.nearView.layer.cornerRadius = self.nearView.frame.size.width / 2;
        self.nearView.clipsToBounds = true
    }
}

extension filterViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)  as! colorCell
        
        cell.colorCell.backgroundColor = colors[indexPath.row]
        cell.colorCell.layer.borderWidth = 0.2
        cell.colorCell.layer.borderColor = UIColor.gray.cgColor
        
        return cell
    }
        
}
    
