//
//  CurrentLocationViewController.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 24/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class CurrentLocationViewController: UIViewController {
    
    let location = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        location.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            location.delegate = self
            location.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            location.startUpdatingLocation()
            
        }

        // Do any additional setup after loading the view.
    }


}
extension CurrentLocationViewController : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
    }
    func fetchCityAndCountry(from location: CLLocation, completion: @escaping (_ city: String?, _ country:  String?, _ error: Error?) -> ()) {
        CLGeocoder().reverseGeocodeLocation(location) { placemarks, error in
            completion(placemarks?.first?.locality,
                       placemarks?.first?.country,
                       error)
        }
    }
    
}
