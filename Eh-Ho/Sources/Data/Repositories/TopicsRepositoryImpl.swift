//
//  TopicsRepositoryImpl.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

class TopicsRepositoryIMPL: TopicsRepository {
   
    let session: SessionAPI
    
    init(session: SessionAPI) {
        self.session = session
    }
    
    func getTopicsInCategoryById(id: Int, completion: @escaping(Result<TopicsInCategoryResponse, Error>) -> ()) {
        let request = TopicsInCategoryRequest(id: id)
        session.send(request: request) { (result) in
            completion(result)
        }
    }

    func getSingleTopicById(id: Int, completion: @escaping(Result<SingleTopicResponse, Error>) -> ()) {
        let request = SingleTopicRequest(id: id)
        session.send(request: request) { (result) in
            completion(result)
        }
    }
    
    
//    func getLatestTopics(completion: @escaping (Result<LatestTopicsResponse, Error>) -> ()) {
//        let request = LatestTopicsRequest()
//        session.send(request: request) { result in
//            completion(result)
//        }
//    }
}
