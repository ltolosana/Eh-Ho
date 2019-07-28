//
//  CategoriesRouter.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 24/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

class CategoriesRouter {
    
    weak var viewController: UIViewController?
    
    static func configureModule() -> UIViewController {
        
        let router = CategoriesRouter()
        let sessionAPI = SessionAPI()
        let categoriesRepository = CategoriesRepositoryIMPL(session: sessionAPI)
        let viewModel = CategoriesViewModel(router: router, categoriesRepository: categoriesRepository)
        let viewController = CategoriesViewController(categoriesViewModel: viewModel)
        
        viewModel.view = viewController
        router.viewController = viewController
        
        return viewController
    }
    
    func navigateToTopicsListInCategory(id: Int) {
        let viewControllerToPush = TopicsRouter.configureModule(id: id)
        viewController?.navigationController?.pushViewController(viewControllerToPush, animated: true)
    }
}
