//
//  AnimationViewController.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 20/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    //MARK: - Login
    lazy var loginContentView : UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
       return view
    }()
    //MARK: - NameTextField
    lazy var nameTextField : UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "NameTextField"
        textField.backgroundColor = .white
        textField.addTarget(self, action:#selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    //MARK: - PasswordTextField
    lazy var passwordTextField : UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "PasswordTextField"
        textField.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    //MARK: - LoginButton
    lazy var loginButton : UIButton = {
       let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .blue
                button.layer.cornerRadius = 5
                button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
//    //MARK: - StackVie
//
//    lazy var stackView : UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.alignment = .fill
//        stack.distribution = .fillEqually
//        stack.spacing = 10
//       return stack
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        view.backgroundColor = .white
        loginContentView.addSubview(nameTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        view.addSubview(loginContentView)

        setUpAutoLayout()
        
    }
    @objc func textFieldDidChange() {
        print(nameTextField.text)
    }
    
    func setUpAutoLayout() {
        
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        nameTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor,constant:40).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor,constant:20).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor,constant:-20).isActive = true
        
//        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        

        
        passwordTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant:20).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor,constant:20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor,constant:-20).isActive = true
        
        
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant:20).isActive = true
        loginButton.leftAnchor.constraint(equalTo: loginContentView.leftAnchor,constant:20).isActive = true
        loginButton.rightAnchor.constraint(equalTo: loginContentView.rightAnchor,constant:-20).isActive = true
        
        
        
        
        
        
        
        
        
        
    }


}
