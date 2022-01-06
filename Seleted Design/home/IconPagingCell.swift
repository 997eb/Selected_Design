import UIKit
import Parchment

struct IconPagingCellViewModel {
  let image: UIImage?
  let selected: Bool
  let tintColor: UIColor
  let title : String?
  let selectedTintColor: UIColor
  
    init(image: UIImage?, title:String?, selected: Bool, options: PagingOptions) {
    self.image = image
    self.selected = selected
    self.tintColor = options.textColor
    self.title = title
    self.selectedTintColor = options.selectedTextColor
  }
}

class IconPagingCell: PagingCell {
  
  fileprivate var viewModel: IconPagingCellViewModel?
  
  fileprivate lazy var imageView: UIImageView = {
    let imageView = UIImageView(frame: .zero)
    imageView.contentMode = .scaleAspectFit
    return imageView
  }()
  
    fileprivate lazy var title: UILabel = {
  
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "This is label view."
        title.font = UIFont.systemFont(ofSize: 14)
        return title
        
    }()
    
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.layer.borderWidth = 0.3
    contentView.layer.borderColor = UIColor.lightGray.cgColor
    contentView.layer.cornerRadius = 5
    contentView.addSubview(imageView)
    contentView.addSubview(title)
    setupConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func setPagingItem(_ pagingItem: PagingItem, selected: Bool, options: PagingOptions) {
    if let item = pagingItem as? IconItem {

      let viewModel = IconPagingCellViewModel(
        image: item.image,
        title: item.icon,
        selected: selected,
        options: options)
      
      imageView.image = viewModel.image
        title.text = viewModel.title?.uppercased()
      
      if viewModel.selected {
        imageView.transform = CGAffineTransform(scaleX: 1, y: 1 )
        imageView.tintColor = viewModel.selectedTintColor
        contentView.backgroundColor = UIColor(red: 0.99, green: 0.91, blue: 0.69, alpha: 1.00)

      } else {
        contentView.backgroundColor = .clear

        imageView.transform = CGAffineTransform(scaleX: 1, y:1)
        imageView.tintColor = viewModel.tintColor
      }
      
      self.viewModel = viewModel
    }
  }
  
  open override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
    guard let viewModel = viewModel else { return }
    if let attributes = layoutAttributes as? PagingCellLayoutAttributes {
      imageView.tintColor = UIColor.interpolate(
        from: viewModel.tintColor,
        to: viewModel.selectedTintColor,
        with: attributes.progress)
    }
  }
  
  private func setupConstraints() {
    imageView.translatesAutoresizingMaskIntoConstraints = false
    title.translatesAutoresizingMaskIntoConstraints = false

    
    let topContraint = NSLayoutConstraint(
      item: imageView,
      attribute: .top,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .top,
      multiplier: 1.0,
      constant: 15)
    
    let bottomConstraint = NSLayoutConstraint(
      item: imageView,
      attribute: .bottom,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .bottom,
      multiplier: 1.0,
      constant: -15)
    
    let topContraint1 = NSLayoutConstraint(
      item: title,
      attribute: .top,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .top,
      multiplier: 1.0,
      constant: 15)
    
    let bottomConstraint1 = NSLayoutConstraint(
      item: title,
      attribute: .bottom,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .bottom,
      multiplier: 1.0,
      constant: -15)
    
    let leadingContraint = NSLayoutConstraint(
      item: title,
      attribute: .leading,
      relatedBy: .equal,
      toItem: imageView,
      attribute: .leading,
      multiplier: 1.0,
      constant: 40)

    
    let trailingContraint = NSLayoutConstraint(
      item: imageView,
      attribute: .leading,
      relatedBy: .equal,
      toItem: contentView,
      attribute: .leading,
      multiplier: 1.0,
      constant: 15)
    
    
    
    contentView.addConstraints([
      topContraint,
      topContraint1,
      bottomConstraint,
      bottomConstraint1,
      leadingContraint,
      trailingContraint])
  }
  
}
