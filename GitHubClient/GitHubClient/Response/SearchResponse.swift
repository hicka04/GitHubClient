//
//  SearchResponse.swift
//  GitHubClient
//
//  Created by hicka04 on 2019/07/24.
//  Copyright © 2019 hicka04. All rights reserved.
//

import Foundation

public struct SearchResponse<Item: Decodable>: Decodable {
    
    public let totalCount: Int
    public let items: [Item]
}
