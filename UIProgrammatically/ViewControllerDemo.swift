////
////  NewViewController.swift
////  UIProgrammatically
////
////  Created by Anilkumar on 17/06/19.
////  Copyright © 2019 Anilkumar. All rights reserved.
////
//
//import UIKit
//
//class ViewControllerDemo: UIViewController {
//
//    /*=====================================================================================
//     UI Programmatically = MuseoSans-500 20.0
//     =====================================================================================*/
//    lazy var titleLabel : UILabel = {
//        let label = UILabel()
//        label.text = "The client Due iligence App. \nSimple. Secure. Convenient."
//        label.numberOfLines = 0
//        label.textAlignment  = .center
//        // label.font = label.font.withSize(defaultFont)
//        label.font = UIFont (name: "MuseoSans-500", size: 16)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    lazy var identityInfoLabel : UILabel = {
//        let label = UILabel()
//        label.text = "Upload your identity documents and information in 2 easy steps"
//        label.numberOfLines = 0
//        label.textAlignment  = .center
//        label.font = UIFont (name: "MuseoSans-500", size: 16)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    lazy var termsAndCondtionlabel : UILabel = {
//        let label = UILabel()
//        label.text = "By clicking on the start button you are agreeing to out terms and conditions."
//        label.numberOfLines = 0
//        label.textAlignment  = .center
//        label.font = UIFont (name: "MuseoSans-500", size: 13)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    lazy var startButton : UIButton = {
//        let button = UIButton()
//        button.backgroundColor = defaultColor
//        button.setTitle("Start", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.titleLabel?.font = UIFont (name: "MuseoSans-500", size: 20)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//    lazy var sendCustomerLinkButton : UIButton =  {
//        let button = UIButton()
//        button.backgroundColor = defaultColor
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//    lazy var privacyPolicyButton: UIButton =  {
//        let button = UIButton()
//        button.backgroundColor = grayColor
//        button.setTitle("Privacy Policy", for: .normal)
//        button.setTitleColor(.black, for: .normal)
//        button.titleLabel?.font = UIFont (name: "MuseoSans-500", size: 16)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//    lazy var termsAndCondtionButton : UIButton = {
//        let button = UIButton()
//        button.backgroundColor = grayColor
//        button.setTitle("T&Cs", for: .normal)
//        button.setTitleColor(.black, for: .normal)
//        button.titleLabel?.font = UIFont (name: "MuseoSans-500", size: 16)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    lazy var infoButton : UIButton = {
//        let button = UIButton()
//        button.setImage(UIImage(named: "infoOriginal"), for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//    lazy var logo : UIImageView = {
//        let imageView = UIImageView(image: UIImage(named: "logo"))
//        imageView.contentMode = .scaleAspectFit
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.clipsToBounds = true
//        return imageView
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.setNeedsStatusBarAppearanceUpdate()
//        //  self.navigationController?.setNavigationBarHidden(true, animated: false)
//        addSubView()
//        setConstraints()
//
//        // Do any additional setup after loading the view.
//    }
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.isNavigationBarHidden = true
//        // self.navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//
//    func addSubView(){
//        view.backgroundColor = .white
//        view.addSubview(logo)
//        view.addSubview(titleLabel)
//        view.addSubview(identityInfoLabel)
//        view.addSubview(termsAndCondtionlabel)
//        view.addSubview(startButton)
//        //        view.addSubview(sendCustomerLinkButton)
//        view.addSubview(privacyPolicyButton)
//        view.addSubview(termsAndCondtionButton)
//        view.addSubview(infoButton)
//        view.addSubview(poweredByIDpal)
//        view.addSubview(orLabel)
//    }
//
//    func setConstraints() {
//
//
//
//
//        logo.layoutAnchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, centerX: view.centerXAnchor, centerY: nil, paddingTop: 15.0, paddingLeft: 0.0, paddingBottom: 0.0, paddingRight: 0.0, width: 120, height: 73, enableInsets:  true)
//
//
//        //        //LOGO
//        //        logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
//        //        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        //        logo.widthAnchor.constraint(equalToConstant: 120).isActive = true
//        //        logo.heightAnchor.constraint(equalToConstant: 73).isActive = true
//        //TITLE
//        titleLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 15).isActive = true
//        titleLabel.centerXAnchor.constraint(equalTo: logo.centerXAnchor).isActive = true
//        titleLabel.widthAnchor.constraint(equalToConstant: 262).isActive = true
//        titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        //identityInfoLabel
//        identityInfoLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
//        identityInfoLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
//        identityInfoLabel.widthAnchor.constraint(equalToConstant: 320).isActive = true
//        identityInfoLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
//        //StartButton
//        startButton.topAnchor.constraint(equalTo: identityInfoLabel.bottomAnchor, constant: 10).isActive = true
//        startButton.centerXAnchor.constraint(equalTo: identityInfoLabel.centerXAnchor).isActive = true
//        startButton.widthAnchor.constraint(equalToConstant: 194).isActive = true
//        startButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
//        //termsAndCondtionlabel
//        termsAndCondtionlabel.topAnchor.constraint(equalTo: privacyPolicyButton.topAnchor, constant: -70).isActive = true
//        termsAndCondtionlabel.centerXAnchor.constraint(equalTo: privacyPolicyButton.centerXAnchor).isActive = true
//        termsAndCondtionlabel.widthAnchor.constraint(equalToConstant: 265).isActive = true
//        termsAndCondtionlabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        //termsAndCondtionButton
//        termsAndCondtionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35).isActive = true
//        termsAndCondtionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        termsAndCondtionButton.widthAnchor.constraint(equalToConstant: 193).isActive = true
//        termsAndCondtionButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
//        //privacyPolicyButton
//        privacyPolicyButton.bottomAnchor.constraint(equalTo: termsAndCondtionButton.topAnchor, constant: -5).isActive = true
//        privacyPolicyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        privacyPolicyButton.widthAnchor.constraint(equalToConstant: 193).isActive = true
//        privacyPolicyButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
//        //infoButton
//        infoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
//        infoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
//        infoButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
//        infoButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
//        //poweredByIDpal
//        poweredByIDpal.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        poweredByIDpal.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant:-5).isActive = true
//        poweredByIDpal.widthAnchor.constraint(equalToConstant: 120).isActive = true
//        poweredByIDpal.heightAnchor.constraint(equalToConstant: 25).isActive = true
//
//
//
//    }
//
//
//
//
//}
