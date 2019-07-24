//
//  User.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

public struct User: Decodable {
    
  public let id: ID
  public let login: String
  public let avatarUrl: URL
  public let htmlUrl: URL
}

extension User {
    
  public struct ID: RawRepresentable, Decodable {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
      self.rawValue = rawValue
    }
  }
}
