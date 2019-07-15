
//
//  PhotosViewController.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 18/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    lazy var logo : UIImageView = {
       let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var titleLabel : UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
