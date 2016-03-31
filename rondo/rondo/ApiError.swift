//
//  ClientError.swift
//  rondo
//
//  Created by Yetkin Timocin on 18/03/16.
//  Copyright © 2016 BaseTech. All rights reserved.
//

import Foundation

enum ApiError: Int {
    
    case Client  = 0
    case Network = 1
    case Server  = 2
    
    static func localizedDescription(errorType: ApiError) -> String {
        
        switch errorType {
        case .Client:
            return "Client Error"
        case .Network:
            return "Network Error"
        case .Server:
            return "Server Error"
        }
        
    }
}