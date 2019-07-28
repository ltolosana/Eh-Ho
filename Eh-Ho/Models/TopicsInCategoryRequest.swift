//
//  TopicsInCategoryRequest.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 25/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

struct TopicsInCategoryRequest: APIRequest {
  
    typealias Response = TopicsInCategoryResponse

    let id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    var method: Method {
        return .GET
    }
    
    var path: String {
        return "/c/\(id).json"
    }
    
    var parameters: [String : String] {
        return [:]
    }
    
    var body: [String : Any] {
        return [:]
    }
    
    var headers: [String : String] {
        return [:]
    }
    
}
