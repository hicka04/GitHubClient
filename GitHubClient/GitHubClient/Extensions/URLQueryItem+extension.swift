//
//  URLQueryItem+extension.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

extension URLQueryItem {
    
  func addingUrlQueryEncode() -> URLQueryItem {
    return URLQueryItem(name: name,
                        value: value?.addingPercentEncoding(withAllowedCharacters: .alphanumerics))
  }
}
