//
//  SignUpController.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {
    
    private let custoSignUp : CustomSignUpView

    override func viewDidLoad() {
        super.viewDidLoad()
        view = custoSignUp
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    
    init(customView: CustomSignUpView = .init()) {
        self.custoSignUp = customView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
