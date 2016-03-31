//
//  RegisterResponse.swift
//  rondo
//
//  Created by Yetkin Timocin on 18/03/16.
//  Copyright © 2016 BaseTech. All rights reserved.
//

import Foundation

struct RegisterResponse {
    
    var registerResponse: String? = nil
    var registerResponseMessage: String? = nil
    var registerResponseHttpStatus: String? = nil
    var registeredUser: User? = nil
    
    init(registerResponse: String, registerResponseMessage: String, registerResponseHttpStatus: String, user: User) {
        self.registerResponse = registerResponse
        self.registerResponseMessage = registerResponseMessage
        self.registerResponseHttpStatus = registerResponseHttpStatus
        self.registeredUser = user
    }
    
    init(dictionary: [String : AnyObject]) {
        
        if let registerResponse = dictionary["response"] as? String {
            self.registerResponse = registerResponse
        }
        
        if let registerResponseMessage = dictionary["message"] as? String {
            self.registerResponseMessage = registerResponseMessage
        }
        
        if let registerResponseHttpStatus = dictionary["httpStatus"] as? String {
            self.registerResponseHttpStatus = registerResponseHttpStatus
        }
        
        if let registeredUser = dictionary["user"] as? [String : AnyObject] {
            self.registeredUser = User(dictionary: registeredUser)
        }
        
    }
    
}