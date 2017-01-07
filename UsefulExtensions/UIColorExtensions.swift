//
//  UIColorExtensions.swift
//  JoeBee
//
//  Created by Andrea Bellotto on 14/11/16.
//  Copyright © 2016 JoeBee Srl. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    // simplify initialization for UIColors
    
    convenience init(r: Int, g:Int , b:Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
    }
    convenience init(netHex:Int) {
        self.init(r:(netHex >> 16) & 0xff, g:(netHex >> 8) & 0xff, b:netHex & 0xff)
    }
    
    
    
    
    open class var yellowMain:UIColor {
        return UIColor(r: 241, g: 199, b: 0)
    }
    open class var grayMain:UIColor {
        return UIColor(r: 242, g: 242, b: 242)
    }
    open class var grayDark:UIColor {
        return UIColor(r: 228, g: 228, b: 228)
    }
    open class var grayDarker:UIColor {
        return UIColor(r: 129, g: 129, b: 129)
    }
    open class var grayDarkerDarker:UIColor {
        return UIColor(netHex: 333333)
    }
    
}
