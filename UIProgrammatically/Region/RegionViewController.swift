//
//  RegionViewController.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 17/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit



class RegionViewController: UIViewController {
    
    private let countriesList = RegionAPI.regionList()
    let regionTableView = UITableView()
    
    lazy var logo : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    public lazy var startOver: UIButton = {
         $0.setTitle("StartOver", for: .normal)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = UIColor(red:0.92, green:0.94, blue:0.95, alpha:1.0)
        return $0
    }(UIButton())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    func setUp(){
        view.backgroundColor = .white
        view.addSubview(regionTableView)
        view.addSubview(logo)
        view.addSubview(startOver)
        setUpConstraints()

        
    }
    func delegate(){

    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        // self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    func setUpConstraints(){
        regionTableView.translatesAutoresizingMaskIntoConstraints = false
        
        
        regionTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        regionTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        
        startOver.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -15).isActive = true
        startOver.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startOver.widthAnchor.constraint(equalToConstant: 100).isActive = true
        startOver.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        startOver.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
//        startOver.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        
        

        logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 120).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 73).isActive = true
        
        if #available(iOS 11.0, *) {
            regionTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            regionTableView.leftAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leftAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            regionTableView.rightAnchor.constraint(equalTo:view.safeAreaLayoutGuide.rightAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            regionTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        regionTableView.delegate  = self
        regionTableView.dataSource = self
        
        regionTableView.register(RegionTableViewCell.self, forCellReuseIdentifier: "Cell")
        
        
    }


}
extension RegionViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0:
//            return 1
//        case 1:
//            return 1
//        default:
            return countriesList.count
      //  }
        
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
//        switch section {
//        case 0:
//            let label = UILabel()
//            label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
//            label.text = "Select ID Region"
//            label.font = UIFont (name: "MuseoSans-500", size: 25)
//            headerView.addSubview(label)
//
//            return headerView
//        default:
//            return headerView
//        }
//
//    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RegionTableViewCell
        cell.region = countriesList[indexPath.row]
        let borderColor: UIColor = UIColor(red:0.03, green:0.25, blue:0.50, alpha:0.1)
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 2
        cell.layer.borderWidth = 2
        cell.layer.borderColor = borderColor.cgColor

        return  cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let screenSize: CGRect = UIScreen.main.bounds
        if screenSize.height <= 568 {
            return 43
        }else{
            return 60
        }
    }
    
    
}
