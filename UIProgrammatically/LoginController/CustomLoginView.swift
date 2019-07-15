//
//  CustomLoginView.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class CustomLoginView: UIView {

//    let controller: CustomController
    
    var didTap: (() -> ())?
    
    var didAction : (() -> Void)?
    
    func setUp() {
        addSubview(title)
        addSubview(title)
        addSubview(nameTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        setUpContraints()
    }
    
    func setUpContraints() {
        
        
////        print(controller.view.frame.size.width)
//
//        customview.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        customview.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//      //  customview.heightAnchor.constraint(equalTo: heightAnchor, multiplier: <#T##CGFloat#>)


        
        
        

        title.topAnchor.constraint(equalTo: topAnchor,constant: 50).isActive = true
        title.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        title.heightAnchor.constraint(equalToConstant: 40).isActive = true
        title.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        nameTextField.topAnchor.constraint(equalTo: title.bottomAnchor,constant: 50).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: leftAnchor,constant:20).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: rightAnchor,constant:-20).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        


        passwordTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 10).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: leftAnchor,constant:20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: rightAnchor,constant:-20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 10).isActive = true
        loginButton.leftAnchor.constraint(equalTo: leftAnchor,constant:20).isActive = true
        loginButton.rightAnchor.constraint(equalTo: rightAnchor,constant:-20).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
//    lazy var customview : UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .red
//        return view
//    }()
    
    
    lazy var title : CustomLabel = {
        let label = CustomLabel(title: "UserLogin", textStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    lazy var nameTextField : UITextField = {
       let textField = UITextField()
        textField.placeholder = "Enter the Name"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter the Password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var loginButton : UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(_didTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setUp()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func _didTap() {
        didTap?()
    }
    
    func add() {
        didAction?()
    }
    
}
