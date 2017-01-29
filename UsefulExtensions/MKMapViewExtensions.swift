//
//  MKMapViewExtensions.swift
//  UsefulExtensions
//
//  Created by Andrea Bellotto on 29/01/17.
//  Copyright © 2017 Andrea Bellotto. All rights reserved.
//

import Foundation
import MapKit

extension UIStackView {
    
    //MARK: - Add view to StackView with Width desired
    
    public func add(_ view:UIView, width:CGFloat){
        self.addArrangedSubview(view)
        let tempWidth = view.widthAnchor.constraint(equalToConstant: width)
        tempWidth.isActive = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
