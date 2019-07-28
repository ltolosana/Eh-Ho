//
//  TopicsViewModel.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

class TopicsViewModel {
    
    weak var view: TopicsViewControllerProtocol?
    let id: Int
    let router: TopicsRouter
    let topicsRepository: TopicsRepository
    
    init(id: Int, router: TopicsRouter, topicsRepository: TopicsRepository) {
        self.id = id
        self.router = router
        self.topicsRepository = topicsRepository
    }
    
    // Esta funcion la creamos nosotros, no viene como las del VC
    func viewDidLoad() {
//        fetchLatestTopics()
        fetchTopicsInCategory()
        
    }
    
    func didTapInTopic(id: Int) {
        router.navigateToTopicDetail(id: id)
    }
    
    private func fetchTopicsInCategory() {
        topicsRepository.getTopicsInCategoryById(id: id) { [weak self] (result) in
            switch result {
            case .success(let value):
                self?.view?.showTopics(topics: value.topicList.topics)
            case .failure:
                self?.view?.showError(with: "Error") // Modificar tambien aqui para poner el Error OK.
                print ("Error en el fetchTopicsInCategory")
            }
        }
    }
    
    
//    private func fetchLatestTopics() {
//        topicsRepository.getLatestTopics { [weak self] (result) in
//            switch result {
//            case .success(let value):
//                self?.view?.showLatestTopics(topics: value.topicList.topics)
//            case .failure:
//                self?.view?.showError(with: "Error") // Modificar tambien aqui para poner el Error OK.
//                print ("Error en el fetchLatestTopics")
//            }
//        }
//    }
    
}
