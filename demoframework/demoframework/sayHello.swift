//
//  sayHello.swift
//  demoframework
//
//  Created by xiaomin he on 2018/12/6.
//  Copyright © 2018年 xiaomin he. All rights reserved.
//

import Foundation

open class ClassForOc:NSObject {
    @objc
     public static let textForOc  = "textForOc"
    
    @objc
     public class func say(name:String) ->String {
        print("swift  say =========="  + name)
        return "Swift  " + name
    }
    
    @objc
     public func hello() ->String {
        return "Hello 00000000000000000 "
    }
}

open class  TestSwift:NSObject {
    
}

public func say(name:String) ->String {
    print("input name is " + name)
    return "Hello  " + name
}
