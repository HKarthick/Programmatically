//
//  RegionAPI.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 18/06/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import Foundation


class RegionAPI {
    
    static func regionList() -> [Region] {
        let region = [
            Region(name: "Europe"),
            Region(name: "United States"),
            Region(name: "Africa"),
            Region(name: "Asia"),
            Region(name: "Australia"),
            Region(name: "Canada"),
            Region(name: "Latin America"),
            ]
        return region
    }
}
