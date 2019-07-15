//
//  CustomTextField.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    var textString = ""
    
    init(placeHolder : String) {
        self.textString = placeHolder
        super.init(frame: .zero)
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
