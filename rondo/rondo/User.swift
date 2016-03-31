//
//  User.swift
//  rondo
//
//  Created by Yetkin Timocin on 18/03/16.
//  Copyright © 2016 BaseTech. All rights reserved.
//

import Foundation

struct User {
    
    var id: String? = nil
    var username: String? = nil
    var firstName: String? = nil
    var lastName: String? = nil
    var email: String? = nil
    var password: String? = nil
    var facebookID: String? = nil
    var facebookLogin: Int? = nil
    var boardID: Int64? = nil
    
    init() {
        
    }
    
    init(dictionary: [String : AnyObject]) {
        
        if let id = dictionary["id"] as? String {
            self.id = id
        }
        
        if let username = dictionary["username"] as? String {
            self.username = username
        }
        
        if let firstName = dictionary["firstName"] as? String {
            self.firstName = firstName
        }
        
        if let lastName = dictionary["lastName"] as? String {
            self.lastName = lastName
        }
        
        if let email = dictionary["email"] as? String {
            self.email = email
        }
        
        if let password = dictionary["password"] as? String {
            self.password = password
        }

        if let facebookID = dictionary["facebookID"] as? String {
            self.facebookID = facebookID
        }
        
        if let facebookLogin = dictionary["facebookLogin"] as? Int {
            self.facebookLogin = facebookLogin
        }
        
        if let boardID = dictionary["boardID"] as? Int64 {
            self.boardID = boardID
        }
        
    }
    
    static func getUser(results: [[String : AnyObject]]) -> [User] {
        
        var users = [User]()
        
        for result in results {
            users.append(User(dictionary: result))
        }
        
        return users
    }
    
}