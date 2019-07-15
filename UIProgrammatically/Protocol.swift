//
//  Protocol.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

protocol UserBindable: AnyObject {
    var user: User? { get set }
    var nameLabel: UILabel! { get }
    var emailLabel: UILabel! { get }
    var bioLabel: UILabel! { get }
    var imageView: UIImageView! { get }
}

extension UserBindable {
    // Make the views optionals
    var nameLabel: UILabel! {
        return nil
    }
    var emailLabel: UILabel! {
        return nil
    }
    var bioLabel: UILabel! {
        return nil
    }
    var imageView: UIImageView! {
        return nil
    }
    // Bind
    func bind(user: User) {
        self.user = user
        bind()
    }
    func bind() {
        guard let user = self.user else {
            return
        }
        if let nameLabel = self.nameLabel {
            nameLabel.text = user.name
        }
        if let bioLabel = self.bioLabel {
            bioLabel.text = user.bio
        }
        if let emailLabel = self.emailLabel {
            emailLabel.text = user.email
        }
        if let imageView = self.imageView {
            imageView.image = user.image
        }
    }
}

