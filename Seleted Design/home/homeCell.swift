//
//  homeCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 14/05/1442 AH.
//

import UIKit

class homeCell: UICollectionViewCell {
    
  
  static let reuseIdentifier: String = "ImageCellIdentifier"
  
   lazy var imageView: UIImageView = {
    let imageView = UIImageView(frame: .zero)
    imageView.contentMode = .scaleToFill
    return imageView
  }()
    
    fileprivate lazy var title: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.brown
        label.numberOfLines = 0
        return label
      }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.clipsToBounds = true
    contentView.addSubview(imageView)
    imageView.layer.cornerRadius = 6
    title.layer.cornerRadius = 6
    contentView.layer.cornerRadius = 6

    
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    override func layoutSubviews() {
        super.layoutSubviews()
        
     /*title.frame = CGRect(x: 5,
                             y: contentView.frame.size.height-50,
                             width: contentView.frame.size.width-10,
                             height: 50)
    */
        
        imageView.frame = CGRect(x: 5,
                             y: 0,
                             width: contentView.frame.size.width-10,
                             height: contentView.frame.size.height-20)
    }
  
}
