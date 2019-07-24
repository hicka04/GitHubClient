//
//  Repository.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

public struct Repository: Decodable {
  
  public let id: ID
  public let name: String
  public let fullName: String
  public let description: String?
  public let stargazersCount: Int
  public let language: String?
  public let updatedAt: Date
  public let owner: User
}

extension Repository {
  
  public struct ID: Decodable, RawRepresentable {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
      self.rawValue = rawValue
    }
  }
}
