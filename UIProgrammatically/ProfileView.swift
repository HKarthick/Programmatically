////
////  ProfileView.swift
////  UIProgrammatically
////
////  Created by Anilkumar on 28/05/19.
////  Copyright © 2019 Anilkumar. All rights reserved.
////
//
//import UIKit
//
//class ProfileView: UIView {
//    var tableView: UITableView!
//
//    lazy var profile : UIImageView = {
//        let imageView = UIImageView(image: UIImage(named: "profile"))
//        imageView.contentMode = .scaleAspectFit
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.layer.borderWidth = 3.0
//        imageView.layer.cornerRadius = 64.0
//        imageView.clipsToBounds = true
//        return imageView
//    }()
//
//
//
//    lazy var segmentedControl: UISegmentedControl = {
//        let control = UISegmentedControl(items: ["Personal", "Social", "Resumè"])
//        control.selectedSegmentIndex = 0
//        control.layer.borderColor = UIColor.gray.cgColor
//        control.tintColor = .gray
//        return control
//    }()
//
//    init(tableView: UITableView) {
//        super.init(frame: .zero)
//        self.tableView = tableView
//        addSubViews()
//    }
//    func addSubViews(){
//        addSubview(upperView)
//        addSubview(profile)
//        addSubview(segmentedControl)
//    }
//
//
//    override func updateConstraints() {
//        let widthView = upperView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 10)
//        let heightView = upperView.heightAnchor.constraint(equalToConstant: frame.size.height/4)
//        let centerView = upperView.centerXAnchor.constraint(equalTo: centerXAnchor)
//        let centerYView = upperView.topAnchor.constraint(equalTo: topAnchor)
//        NSLayoutConstraint.activate([widthView,heightView,centerView,centerYView])
//
//        let widthProfile = profile.widthAnchor.constraint(equalToConstant: 100)
//        let heightProfile = profile.heightAnchor.constraint(equalToConstant: 100)
//        let topProfile = profile.topAnchor.constraint(equalTo: upperView.topAnchor, constant: 100)
//        let centerYPROFILE = profile.centerXAnchor.constraint(equalTo: upperView.centerXAnchor)
//        NSLayoutConstraint.activate([widthProfile,heightProfile,topProfile,centerYPROFILE])
//
//
//        let centerXSegment = segmentedControl.centerXAnchor.constraint(equalTo: upperView.centerXAnchor)
//        let centerYSegment = segmentedControl.centerYAnchor.constraint(equalTo: centerYAnchor)
//        let topSegment = segmentedControl.topAnchor.constraint(equalTo: bottomAnchor, constant: 150)
//        let widthsegmentedControl = segmentedControl.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 10)
//        let heightsegmentedControl = segmentedControl.heightAnchor.constraint(equalTo: upperView.heightAnchor, multiplier: 10)
//
//        NSLayoutConstraint.activate([centerXSegment,centerYSegment,topSegment,widthsegmentedControl,heightsegmentedControl])
//        super.updateConstraints()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//
//
//
//}
