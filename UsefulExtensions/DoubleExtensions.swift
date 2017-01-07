//
//  DoubleExtensions.swift
//  JoeBee
//
//  Created by Andrea Bellotto on 14/11/16.
//  Copyright © 2016 JoeBee Srl. All rights reserved.
//

import Foundation

extension Double {
    
    // rounds to fraction digits the double
    
    func roundToDecimal(fractionDigits: Int) -> Double {
        let multiplier = pow(10.0, Double(fractionDigits))
        return (self * multiplier).rounded() / multiplier
    }
}
