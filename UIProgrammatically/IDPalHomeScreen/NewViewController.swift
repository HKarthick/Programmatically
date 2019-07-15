//
//  NewViewController.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 17/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class NewViewController: UIViewController ,Helper{
    /*
     iPhoneSE - 320*568
     =====================================================================================
     iphone6,6s,6plus, 6s plus - 375*667
     =====================================================================================
     iphone7 - 375*667
     =====================================================================================
     iPhone7plus - 414*736
     =====================================================================================
     iPhone8 - 375*667
     =====================================================================================
     iPhone8Plus - 414*736
     =====================================================================================
     iPhoneX - 375*812
     
     
     
     
     iPhoneXs -
     
     iPhoneXR -
     
     iPhoneXSMax -
     
     
     =====================================================================================
     iPadAir - 768*1024
     =====================================================================================
     iPadMini - 768*1024
     =====================================================================================
     IPadPro -
     =====================================================================================
     */
    
    /*=====================================================================================
     UI Programmatically = MuseoSans-500 20.0
     =====================================================================================*/
    let titleLabel = IDPalLabel(text: "The client Due iligence App. \nSimple. Secure. Convenient.")
        .buildUI()
    
    let identityInfoLabel = IDPalLabel(text: "Upload your identity documents and information in 2 easy steps")
        .buildUI()
    
    let termsAndCondtionlabel = IDPalLabel(text: "By clicking on the start button you are agreeing to out terms and conditions.")
        .changeFont(font: 13)
        .buildUI()
    
    let orLabel = IDPalLabel(text: "or")
        .changeFont(font: 13)
        .buildUI()
    
    let startButton = IDPalButton(text: "Start", fontSize: 20)
        .changeColor(color: UIColor(red:0.03, green:0.25, blue:0.50, alpha:1.0))
        .setTitleColor(color: .white, state: .normal)
        .addTarget(target: self, action: #selector(buttonClicked), fors: .touchUpInside)
        .buildUI()
    
    let sendCustomerLinkButton = IDPalButton(text: "SendCustomerLink", fontSize: 20)
         .changeColor(color: UIColor(red:0.03, green:0.25, blue:0.50, alpha:1.0))
        .buildUI()
    
    let privacyPolicyButton = IDPalButton(text: "Privacy Policy", fontSize: 16)
        .changeColor(color: .gray)
        .setTitleColor(color: .black, state: .normal)
        .changeColor(color: UIColor(red:0.92, green:0.94, blue:0.95, alpha:1.0))
        .buildUI()
    
    let termsAndCondtionButton = IDPalButton(text: "T&Cs", fontSize: 16)
        .changeColor(color: .gray)
        .setTitleColor(color: .black, state: .normal)
        .changeColor(color: UIColor(red:0.92, green:0.94, blue:0.95, alpha:1.0))
        .buildUI()
    
    let infoButton = IDPalButton(text: "", fontSize: 16)
        .setImage(UIImage(named:"infoOriginal"))
        .buildUI()
    
    let poweredByIDpal  = IDPalButton(text: "", fontSize: 16)
        .setImage(UIImage(named: "powered-by"))
        .isHidden(bool: false)
        .buildUI()
    

    @objc func buttonClicked() {
        print("Button Clicked")
        showAlert(title: "Oops", message: "Working as expected", vc: self)

    }

    
    lazy var logo : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
     //  self.navigationController?.setNavigationBarHidden(true, animated: false)
        addSubView()
        setConstraints()

        // Do any additional setup after loading the view.
    }
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.isNavigationBarHidden = true
//       // self.navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func addSubView(){
        view.backgroundColor = .white
        view.addSubview(logo)
        view.addSubview(titleLabel)
        view.addSubview(identityInfoLabel)
        view.addSubview(termsAndCondtionlabel)
        view.addSubview(startButton)
        view.addSubview(sendCustomerLinkButton)
        view.addSubview(privacyPolicyButton)
        view.addSubview(termsAndCondtionButton)
        view.addSubview(infoButton)
        view.addSubview(poweredByIDpal)
        view.addSubview(orLabel)
    }
    
    func setConstraints() {
        
        
        
        
        logo.layoutAnchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, centerX: view.centerXAnchor, centerY: nil, paddingTop: 15.0, paddingLeft: 0.0, paddingBottom: 0.0, paddingRight: 0.0, width: 120, height: 73, enableInsets:  true)
        
        
//        //LOGO
//        logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
//        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        logo.widthAnchor.constraint(equalToConstant: 120).isActive = true
//        logo.heightAnchor.constraint(equalToConstant: 73).isActive = true
        
        //TITLE
        titleLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 15).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: logo.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 262).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //identityInfoLabel
        identityInfoLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        identityInfoLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
        identityInfoLabel.widthAnchor.constraint(equalToConstant: 320).isActive = true
        identityInfoLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        //StartButton
        startButton.topAnchor.constraint(equalTo: identityInfoLabel.bottomAnchor, constant: 20).isActive = true
        startButton.centerXAnchor.constraint(equalTo: identityInfoLabel.centerXAnchor).isActive = true
        startButton.widthAnchor.constraint(equalToConstant: 194).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        //OR Label
        orLabel.topAnchor.constraint(equalTo: startButton.bottomAnchor, constant: 5).isActive = true
        orLabel.centerXAnchor.constraint(equalTo: startButton.centerXAnchor).isActive = true
        orLabel.widthAnchor.constraint(equalToConstant: 42).isActive = true
        orLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        //sendCustomerLinkButton
        sendCustomerLinkButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 5).isActive = true
        sendCustomerLinkButton.centerXAnchor.constraint(equalTo: orLabel.centerXAnchor).isActive = true
        sendCustomerLinkButton.widthAnchor.constraint(equalToConstant: 194).isActive = true
        sendCustomerLinkButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        //termsAndCondtionlabel
        termsAndCondtionlabel.topAnchor.constraint(equalTo: privacyPolicyButton.topAnchor, constant: -70).isActive = true
        termsAndCondtionlabel.centerXAnchor.constraint(equalTo: privacyPolicyButton.centerXAnchor).isActive = true
        termsAndCondtionlabel.widthAnchor.constraint(equalToConstant: 265).isActive = true
        termsAndCondtionlabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        //termsAndCondtionButton
        termsAndCondtionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35).isActive = true
        termsAndCondtionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        termsAndCondtionButton.widthAnchor.constraint(equalToConstant: 193).isActive = true
        termsAndCondtionButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        //privacyPolicyButton
        privacyPolicyButton.bottomAnchor.constraint(equalTo: termsAndCondtionButton.topAnchor, constant: -5).isActive = true
        privacyPolicyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        privacyPolicyButton.widthAnchor.constraint(equalToConstant: 193).isActive = true
        privacyPolicyButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        //infoButton
        infoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        infoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        infoButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        infoButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        //poweredByIDpal
        poweredByIDpal.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        poweredByIDpal.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant:-5).isActive = true
        poweredByIDpal.widthAnchor.constraint(equalToConstant: 120).isActive = true
        poweredByIDpal.heightAnchor.constraint(equalToConstant: 25).isActive = true

        
        
    }
    



}
