//
//  GitHubAPIError.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

public struct GitHubAPIError: Decodable, Error {
    
    public let message: String
    public let fieldErrors: [FieldError]?
    
    public struct FieldError: Decodable {
        
        let resource: String
        let field: String
        let code: String
    }
}
