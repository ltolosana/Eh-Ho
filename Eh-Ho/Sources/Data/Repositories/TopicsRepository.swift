//
//  TopicsRepository.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

protocol TopicsRepository {
    func getTopicsInCategoryById(id: Int, completion: @escaping(Result<TopicsInCategoryResponse, Error>) -> ())
    func getSingleTopicById(id: Int, completion: @escaping(Result<SingleTopicResponse, Error>) -> ())
//    func getLatestTopics(completion: @escaping(Result<LatestTopicsResponse, Error>) -> ())
 //   func createNewTopic(text: String, description: String, completion: @escaping(Result<>) -> ())
}
