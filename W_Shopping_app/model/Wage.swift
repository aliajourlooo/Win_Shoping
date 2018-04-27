//
//  Wage.swift
//  W_Shopping_app
//
//  Created by shahin miraftabi on 4/26/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import Foundation


class Wage {
    class func howManyHours (workWage : Double , forMaterial price : Double ) ->Int
    {
        return  Int(ceil(price/workWage))
    }
}
