//
//  GitHubAPI.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

public enum GitHubAPI {
  
  public struct SearchRepositories: GitHubRequest {
          
    public typealias Response = SearchResponse<Repository>
    
    public let path: String = "/search/repositories"
    public let method: HTTPMethod = .get
    public var queryItems: [URLQueryItem] {
      return [URLQueryItem(name: "q", value: keyword)]
    }
    
    public let keyword: String
    
    public init(keyword: String) {
      self.keyword = keyword
    }
  }
  
  public struct SearchUsers: GitHubRequest {
          
    public typealias Response = SearchResponse<User>
    
    public let path: String = "/search/users"
    public let method: HTTPMethod = .get
    public var queryItems: [URLQueryItem] {
      return [URLQueryItem(name: "q", value: keyword)]
    }
    
    public let keyword: String
    
    public init(keyword: String) {
      self.keyword = keyword
    }
  }
}
