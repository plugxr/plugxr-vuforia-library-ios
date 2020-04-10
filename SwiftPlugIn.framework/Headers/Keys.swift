//
//  Keys.swift
//  SwiftPlugIn
//
//  Created by Shivaji Yerra on 28/11/19.
//  Copyright © 2019 Shivaji Yerra. All rights reserved.
//

import Foundation
var dict = NSDictionary()
@objc public class Keys: NSObject {
 @objc public func sendKeys(keys: NSDictionary) {
        print(keys)
        dict = keys
    }
    @objc public func getKeys() -> NSDictionary{
        return dict
    }
}
