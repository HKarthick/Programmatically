//
//  Helper.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 25/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

//class Helper {
//
//    static var app : Helper = {
//        return Helper()
//    }()
//
//
//    func showAlert(title: String, message:String, vc: UIViewController) {
//        let alert = UIAlertController(title: "Alert", message: "Deleting mail!", preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        alert.addAction(okAction)
//        alert.addAction(cancelAction)
//        vc.present(alert, animated: true, completion: nil)
//    }
//    //
//
//
//}


protocol Helper {
}


extension Helper {
    
    func printName(){
        
    }
    func showAlert(title: String, message:String, vc: UIViewController) {
        let alert = UIAlertController(title: "Alert", message: "Deleting mail!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        vc.present(alert, animated: true, completion: nil)
    }
}
