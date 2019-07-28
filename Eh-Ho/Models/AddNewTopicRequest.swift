//
//  AddNewTopicRequest.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 17/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation
struct AddNewTopicRequest: APIRequest {
    
    typealias Response = AddNewTopicResponse

    let title: String
    let raw: String
    let createdAt: String
    
    init(title: String, raw: String, createdAt: String) {
        self.title = title
        self.raw = raw
        self.createdAt = createdAt
    }
    
    var method: Method {
        return .POST
    }
    
    var path: String {
        return "/posts.json"
    }
    
    var parameters: [String : String] {
        return [:]
    }
    
    var body: [String : Any] {
        return ["title": title,
                "raw": raw,
                "created_at": createdAt]
    }
    
    var headers: [String : String] {
        return [:]
    }
    
    
    
    
}
