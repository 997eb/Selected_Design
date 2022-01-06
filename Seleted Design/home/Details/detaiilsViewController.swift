//
//  detaiilsViewController.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 20/05/1442 AH.
//

import UIKit

class detaiilsViewController: UIViewController {
    
    @IBOutlet weak var favorate: UIButton!
    @IBOutlet weak var sizes: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var storeImg: UIImageView!
    @IBOutlet weak var aboutContainer: UIView!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var favorateView: UIView!
    @IBOutlet weak var reviewsContainer: UIView!
    @IBOutlet weak var shareLine: UIView!
    @IBOutlet weak var commentsLine: UIView!
    @IBOutlet weak var reviewsLine: UIView!
    @IBOutlet weak var aboutLine: UIView!
    @IBOutlet weak var reviewsLine2: UIView!
    @IBOutlet weak var shareLine2: UIView!
    @IBOutlet weak var commentsLine2: UIView!
    @IBOutlet weak var aboutLine2: UIView!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var chartLabel: UILabel!
    @IBOutlet weak var chartView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var colors = [UIColor(red: 0.48, green: 0.24, blue: 0.51, alpha: 1.00)
                   , UIColor(red: 0.22, green: 0.47, blue: 0.48, alpha: 1.00)
                   , UIColor(red: 0.17, green: 0.17, blue: 0.18, alpha: 1.00)
                   , UIColor(red: 0.47, green: 0.46, blue: 0.48, alpha: 1.00)]

    @IBAction func addBtn(_ sender: Any) {
        print("add Clicked")
        self.add.setImage(UIImage(named: "added.png"), for: .normal)
        chartLabel.text = "ADDED TO CHART"
    }
    
    @IBAction func favorateBtn(_ sender: Any) {
        print("Favorate Clicked")
        self.favorate.setImage(UIImage(named: "clickedLike.png"), for: .normal)
    }
        

    override func viewWillAppear(_ animated: Bool) {

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
    
        UINavigationBar.appearance().isTranslucent = true
    }
    
    @IBOutlet weak var detailsHeight: NSLayoutConstraint!
    
        override func viewDidLoad() {
            super.viewDidLoad()

            UINavigationBar.appearance().isTranslucent = true
            navigationController?.isNavigationBarHidden = false
            // I NEED TO DETELE BACK LABEL
   

            self.aboutContainer.isHidden = false
            self.reviewsContainer.isHidden = true
            
            self.aboutLine2.isHidden = false
            self.reviewsLine2.isHidden = true
            self.commentsLine2.isHidden = true
            self.shareLine2.isHidden = true

            
            detailsView.roundCorners(corners: [.topLeft, .topRight], radius: 40.0)
            commentView.roundCorners(corners: [.topLeft, .topRight], radius: 40.0)
            
            tableView.separatorInset = .zero
            self.tableView.separatorStyle = .none
            
            favorateView.layer.shadowColor = UIColor.black.cgColor
            favorateView.layer.shadowOpacity = 3
            favorateView.layer.shadowOffset = CGSize.zero
            favorateView.layer.shadowRadius = 10
            
            chartView.layer.shadowColor = UIColor.black.cgColor
            chartView.layer.shadowOpacity = 3
            chartView.layer.shadowOffset = CGSize.zero
            chartView.layer.shadowRadius = 10
            
            self.favorateView.layer.cornerRadius = self.favorateView.frame.size.width / 2;
            self.favorateView.clipsToBounds = true
            
            self.chartView.layer.cornerRadius = self.chartView.frame.size.width / 2;
            self.chartView.clipsToBounds = true


        }
        
    @IBOutlet weak var commentView: UIView!

    @IBAction func comments(_ sender: Any) {

        self.price.isHidden = true
        self.detailsView.isHidden = true
        self.commentsLine.isHidden = false
        self.commentView.isHidden = false
        self.sizes.isHidden = true
        self.productName.isHidden = true
        self.storeName.isHidden = true
        self.storeImg.isHidden = true
        self.aboutLine.isHidden = true
        self.reviewsLine.isHidden = true
        self.shareLine.isHidden = true


    }

    
    @IBAction func share(_ sender: Any) {
        
        self.aboutLine2.isHidden = true
        self.reviewsLine2.isHidden = true
        self.commentsLine2.isHidden = true
        self.shareLine2.isHidden = false
        
        self.sizes.isHidden = false
        self.productName.isHidden = false
        self.storeName.isHidden = false
        self.storeImg.isHidden = false
        self.detailsView.isHidden = false
        self.aboutContainer.isHidden = true
        self.reviewsContainer.isHidden = true
        self.price.isHidden = false
        self.commentsLine.isHidden = true
        self.commentView.isHidden = true

    }
    @IBAction func About(_ sender: Any) {
        
        
        self.aboutLine2.isHidden = false
        self.reviewsLine2.isHidden = true
        self.commentsLine2.isHidden = true
        self.shareLine2.isHidden = true
        
        self.sizes.isHidden = false
        self.productName.isHidden = false
        self.storeName.isHidden = false
        self.storeImg.isHidden = false
        self.detailsView.isHidden = false
        self.aboutContainer.isHidden = false
        self.price.isHidden = false
        self.reviewsContainer.isHidden = true
        self.commentView.isHidden = true

    }
    
    @IBAction func Reviews(_ sender: Any) {
        
        self.aboutLine2.isHidden = true
        self.reviewsLine2.isHidden = false
        self.commentsLine2.isHidden = true
        self.shareLine2.isHidden = true
        
        self.sizes.isHidden = false
        self.price.isHidden = false
        self.productName.isHidden = false
        self.storeName.isHidden = false
        self.storeImg.isHidden = false
        self.detailsView.isHidden = false
        self.aboutContainer.isHidden = true
        self.reviewsContainer.isHidden = false
        self.commentView.isHidden = true
        
 
    }

}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

extension detaiilsViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)  as! imageSlideShowCell
        
        let images = [UIImage(named: "sofaDetails.png") , UIImage(named: "chairD.png")]
        cell.detailsImg.image = images[indexPath.row]
            
         return cell
    }
}


extension detaiilsViewController :  UITableViewDelegate, UITableViewDataSource  {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return colors.count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as! colorsDetailsCell
            cell.colorView.backgroundColor = self.colors[indexPath.row]
            cell.selectionStyle = .none
        
             return cell
        
        }
}

