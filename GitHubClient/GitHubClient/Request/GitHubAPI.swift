//
//  GitHubAPI.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

enum GitHubAPI {
  
  struct SearchRepositories: GitHubRequest {
          
    typealias Response = SearchResponse<Repository>
    
    let path: String = "/search/repositories"
    let method: HTTPMethod = .get
    var queryItems: [URLQueryItem] {
      return [URLQueryItem(name: "q", value: keyword)]
    }
    
    let keyword: String
  }
  
  struct SearchUsers: GitHubRequest {
          
    typealias Response = SearchResponse<User>
    
    let path: String = "/search/users"
    let method: HTTPMethod = .get
    var queryItems: [URLQueryItem] {
      return [URLQueryItem(name: "q", value: keyword)]
    }
    
    let keyword: String
  }
}
