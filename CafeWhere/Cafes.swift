//
//  Cafes.swift
//  CafeWhere
//
//  Created by JillOU on 2020/8/17.
//  Copyright © 2020 Jillou. All rights reserved.
//

import Foundation
struct Cafes:Codable{
    var name:String
    var wifi:Double
    var socket:String
    var limitedtime:String
    var opentime:String
    enum CodingKeys:String, CodingKey{
        case name
        case wifi
        case socket
        case limitedtime = "limited_time"
        case opentime = "open_time"
    }
}

