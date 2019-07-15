//
//  CustomLabel.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
    let labelString : String
    let textStyle : UIFont.TextStyle
    
    
    init(title: String,textStyle : UIFont.TextStyle) {
        self.labelString = title
        self.textStyle = textStyle
        super.init(frame: .zero)
        setUp()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        text = labelString
        backgroundColor = .blue
        textColor = .white
        textAlignment = .center
        numberOfLines = 0
        font = UIFont.boldSystemFont(ofSize: 20.0)
    }


}
