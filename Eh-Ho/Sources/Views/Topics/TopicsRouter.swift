//
//  TopicsRouter.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

class TopicsRouter {
    
    weak var viewController: UIViewController?
    
//    static func configureModule() -> UIViewController {
//
//        let router = TopicsRouter()
//        let sessionAPI = SessionAPI()
//        let topicsRepository = TopicsRepositoryIMPL(session: sessionAPI)
//        let viewModel = TopicsViewModel(router: router, topicsRepository: topicsRepository)
//        let viewController = TopicsViewController(topicsViewModel: viewModel)
//
//        viewModel.view = viewController
//        router.viewController = viewController
//
//        return viewController
//    }
    
    static func configureModule(id: Int) -> UIViewController {
        
        let router = TopicsRouter()
        let sessionAPI = SessionAPI()
        let topicsRepository = TopicsRepositoryIMPL(session: sessionAPI)
        let viewModel = TopicsViewModel(id: id, router: router, topicsRepository: topicsRepository)
        let viewController = TopicsViewController(topicsViewModel: viewModel)
        
        viewModel.view = viewController
        router.viewController = viewController
        
        return viewController
    }
    
    
    func navigateToTopicDetail(id: Int) {
        let viewControllerToPush = DetailTopicRouter.configureModule(id: id)
        viewController?.navigationController?.pushViewController(viewControllerToPush, animated: true)
    }
}

