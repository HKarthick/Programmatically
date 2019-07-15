//
//  ViewController.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    lazy var upperView : UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
        lazy var profile : UIImageView = {
            let imageView = UIImageView(image: UIImage(named: "profile"))
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.layer.borderWidth = 3.0
            imageView.layer.cornerRadius = 64.0
            imageView.clipsToBounds = true
            return imageView
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        addConstraints()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func addSubViews(){
        view.backgroundColor = .white
        view.addSubview(upperView)
        view.addSubview(profile)
    }
    
    func addConstraints(){
        upperView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        upperView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        upperView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        upperView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        profile.topAnchor.constraint(equalTo: upperView.bottomAnchor, constant: -50).isActive = true
        profile.heightAnchor.constraint(equalToConstant: 100).isActive = true
        profile.widthAnchor.constraint(equalToConstant: 100).isActive = true
        profile.centerXAnchor.constraint(equalTo: upperView.centerXAnchor, constant: 0).isActive = true


        
        
    }

}

extension ViewController : UITableViewDelegate {
    
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    
    
}

