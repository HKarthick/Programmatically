//
//  User.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

class User {
    var name = ""
    var email = ""
    var bio = ""
    var image: UIImage? = nil
    
    init(name: String, email: String, bio: String) {
        self.name = name
        self.email = email
        self.bio = bio
    }
}
