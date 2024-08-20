//
//  Authservice.swift
//  HalykBank
//
//  Created by Yerkebulan on 20.08.2024.
//

import Foundation

class AuthService {
    
    public static let shared = AuthService()
    
    private init() {}
    
    
    
    /// A method to register a user
    /// - Parameters:
    ///   - request: the users information(username , password)
    ///   - completion: A completion with 2 values
    ///   - Bool: Indicates whether the user is registered correctly or not
    public func registerUser(with request: RegisterUserRequest, completion: @escaping((Bool, HBErrors) -> Void)) {
        
        
        
    }
}
