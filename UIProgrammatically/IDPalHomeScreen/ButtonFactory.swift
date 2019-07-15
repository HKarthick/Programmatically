//
//  ButtonFactory.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 17/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class IDPalButton{
    private let button  :UIButton
    init(text: String,fontSize: CGFloat) {
        button = UIButton()
     //   button.backgroundColor = defaultColor
        button.setTitle(text, for: .normal)
        button.titleLabel?.font = UIFont (name: "MuseoSans-500", size: fontSize)
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setImage(_ image: UIImage?) -> Self{
        button.setImage(image, for: .normal)
        return self
    }
    
    func setTitleColor(color:UIColor, state: UIControl.State)-> Self{
        button.setTitleColor(color, for: state)
        return self
    }
    func addTarget(target: Any?, action: Selector, fors:  UIControl.Event) -> Self{
        button.addTarget(target, action: action, for: fors)
        return self
    }
    
    func isHidden(bool: Bool)-> Self{
        button.isHidden = bool
        return self
    }
    
    
    
    
    func changeColor(color:UIColor) -> Self{
        button.backgroundColor = color
        return self
    }
    
    func buildUI() -> UIButton{
        return button
    }
    
    
}

