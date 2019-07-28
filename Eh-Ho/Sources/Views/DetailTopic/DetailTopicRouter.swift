//
//  DetailTopicRouter.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 23/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

class DetailTopicRouter {
    weak var viewController: UIViewController?
    
    static func configureModule(id: Int) -> UIViewController {
        
        let router = DetailTopicRouter()
        let sessionAPI = SessionAPI()
        let topicsRepository = TopicsRepositoryIMPL(session: sessionAPI)
        let viewModel = DetailTopicViewModel(id: id, router: router, topicsRepository: topicsRepository)
        let viewController = DetailTopicViewController(viewModel: viewModel)
        
        viewModel.view = viewController
        router.viewController = viewController
        
        return viewController
    }
}
