//
//  labelFactory.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 17/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class IDPalLabel{
    private let label  :UILabel
    init(text: String) {
        label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.textAlignment  = .center
        // label.font = label.font.withSize(defaultFont)
        label.font = UIFont (name: "MuseoSans-500", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    func changeFont(font :CGFloat) -> Self{
        label.font = label.font.withSize(font)
        return self
    }
    func buildUI() -> UILabel{
        return label
    }
    
    
}


