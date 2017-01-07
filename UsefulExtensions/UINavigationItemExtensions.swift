//
//  UINavigationItemExtensions.swift
//  JoeBee
//
//  Created by Andrea Bellotto on 14/11/16.
//  Copyright © 2016 JoeBee Srl. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationItem{
    func addDismissLeftButton(target:AnyObject, selector:Selector){
        self.hidesBackButton = true
        let originalImage = UIImage(named: "x")
        let scaledIcon = UIImage(cgImage: originalImage!.cgImage!, scale: 3, orientation: originalImage!.imageOrientation)
        let leftItem = UIBarButtonItem(image: scaledIcon, style: .plain, target: target, action: selector)
        self.leftBarButtonItem = leftItem
    }
}
