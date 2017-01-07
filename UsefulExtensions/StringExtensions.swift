//
//  StringExtensions.swift
//  JoeBee
//
//  Created by Andrea Bellotto on 14/11/16.
//  Copyright © 2016 JoeBee Srl. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

extension String: ParameterEncoding {
    
    // return the localized string from a string label
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
    func localizedWithComment(comment:String) -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: comment)
    }
    
    // trims the string from useless whitespaces and newlines
    var trimmed:String{
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    
    func getWhiteAndYellowIn(startIndex:Int, length:Int) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(
            string: self,
            attributes: [NSFontAttributeName:UIFont.joeBeeSemiBoldFontOfSize(ofSize: 15)])
        attributedString.addAttribute(NSForegroundColorAttributeName,
                                      value: UIColor.yellow,
                                      range: NSRange(location: startIndex, length: length))
        return attributedString
    }
    
    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var request = try urlRequest.asURLRequest()
        request.httpBody = data(using: .utf8, allowLossyConversion: false)
        return request
    }

}
