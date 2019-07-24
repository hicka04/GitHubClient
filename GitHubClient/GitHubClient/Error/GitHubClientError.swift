//
//  GitHubClientError.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

public enum GitHubClientError: Error {
    
    case connectionError(Error)
    case responseParseError(Error)
    case apiError(GitHubAPIError)
}
