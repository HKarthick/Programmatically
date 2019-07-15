//
//  RegionTableViewCell.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 18/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class RegionTableViewCell: UITableViewCell {
    
    var region : Region?{
        didSet{
            guard let contactItem = region else {return}
            if let name = contactItem.name {
                regionImage.image = UIImage(named: name)
                regionLabel.text = name
            }
        }
        
    }
    
    
    
    let regionImage  : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor =  UIColor(red:0.03, green:0.25, blue:0.50, alpha:1.0)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    let regionLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont (name: "MuseoSans-500", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(regionImage)
        addSubview(regionLabel)
        
        regionImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive  = true
        regionImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        regionImage.widthAnchor.constraint(equalToConstant: 64).isActive = true
        regionImage.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        regionLabel.leadingAnchor.constraint(equalTo: regionImage.trailingAnchor, constant: 40).isActive = true
        regionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        regionLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        regionLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
