//
//  GitHubClient.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

public protocol GitHubRequestable {
    
  func send<Request: GitHubRequest>(request: Request,
                                    completion: @escaping (Result<Request.Response, GitHubClientError>) -> Void)
}

final public class GitHubClient {
    
  private let session: URLSession
  
  public init(session: URLSession = URLSession(configuration: .default)) {
    self.session = session
  }
}

extension GitHubClient: GitHubRequestable {
    
  public func send<Request: GitHubRequest>(request: Request,
                                           completion: @escaping (Result<Request.Response, GitHubClientError>) -> Void) {
        
    let urlRequest = request.buildURLRequest()
    
    let task = session.dataTask(with: urlRequest) { data, response, error in
      switch (data, response, error) {
      case (_, _, let error?):
        completion(.failure(.connectionError(error)))
          
      case (let data?, let response?, _):
        do {
            let response = try request.response(from: data, urlResponse: response)
            completion(.success(response))
        } catch let error as GitHubAPIError {
            completion(.failure(.apiError(error)))
        } catch {
            completion(.failure(.responseParseError(error)))
        }
          
      default:
        fatalError("Invalid response combination")
      }
    }
    
    task.resume()
  }
}
