//
//  RondoApiClient.swift
//  rondo
//
//  Created by Yetkin Timocin on 18/03/16.
//  Copyright © 2016 BaseTech. All rights reserved.
//

import Foundation

class RondoApiClient : NSObject {
    
    /* Shared session */
    var session: NSURLSession
    
    var rondoUser: User
    
    override init() {
        session = NSURLSession.sharedSession()
        rondoUser = User()
        super.init()
    }
    
    // MARK: - Shared Instance
    
    class func sharedInstance() -> RondoApiClient {
        
        struct Singleton {
            static var sharedInstance = RondoApiClient()
        }
        
        return Singleton.sharedInstance
    }
}
