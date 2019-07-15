//
//  CustomSignUpView.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class CustomSignUpView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setUp()
    }
    
    func setUp() {
        addSubview(topicLabel)
        addSubview(sampleTextField)
        addSubview(sampleButton)
        setUpContriants()
        
    }
    
    lazy var topicLabel : UILabel = {
       let label = UILabel()
        label.text = "MyApp"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    
    
    lazy var custom  : CustomLabel = {
        let label = CustomLabel(title: "title", textStyle: .headline)
        return label
    }()
    
    lazy var sampleTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Sample Text"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var sampleButton : UIButton = {
        let button = UIButton()
        button.setTitle("Click", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    func setUpContriants() {
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
