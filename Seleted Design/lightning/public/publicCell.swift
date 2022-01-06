//
//  publicCell.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 15/05/1442 AH.
//

import UIKit

class publicCell: UICollectionViewCell {
    
  //  iconPagingCell
  
  static let reuseIdentifier: String = "ImageCellIdentifier"
  
   lazy var imageView: UIImageView = {
    let imageView = UIImageView(frame: .zero)
    imageView.contentMode = .scaleAspectFill
 //   imageView.image =  UIImage(named: "public1.png")
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
 //   contentView.addSubview(title)
    imageView.layer.cornerRadius = 6
    title.layer.cornerRadius = 6
    contentView.layer.cornerRadius = 6

    
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    override func layoutSubviews() {
        super.layoutSubviews()

        imageView.frame = CGRect(x: 5,
                             y: 0,
                             width: contentView.frame.size.width-10,
                             height: contentView.frame.size.height-20)
    }
  
}
