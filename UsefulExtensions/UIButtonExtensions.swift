//
//  UIButtonExtensions.swift
//  UsefulExtensions
//
//  Created by Andrea Bellotto on 29/01/17.
//  Copyright © 2017 Andrea Bellotto. All rights reserved.
//

import Foundation

extension UIButton {
    
    //MARK - Utility for edit label properties
    
    var titleLabelFont: UIFont! {
        get { return self.titleLabel?.font }
        set { self.titleLabel?.font = newValue }
    }
    var textColor:UIColor?{
        get { return self.titleLabel?.textColor }
        set { self.setTitleColor(newValue, for: .normal) }
    }
    
}
