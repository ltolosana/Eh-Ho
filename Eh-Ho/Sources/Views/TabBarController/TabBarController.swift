//
//  TabBarController.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

//    let topicsController: UIViewController
    let categoriesController: UIViewController
    
//    init(topicsController: UIViewController) {
//        self.topicsController = topicsController
//
//        super.init(nibName: nil, bundle: nil)
//    }
    
    init(categoriesController: UIViewController) {
        self.categoriesController = categoriesController
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not supported")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabBar()
    }
    

    
    private func configureTabBar() {
//        let topicsController = self.topicsController
//        topicsController.tabBarItem = UITabBarItem(title: "Topics", image: nil, selectedImage: nil)
//
//        self.tabBar.barTintColor = .white
//        let controllers = [topicsController]
//        self.viewControllers = controllers.map { UINavigationController(rootViewController: $0) }
        let categoriesController = self.categoriesController
        categoriesController.title = "Categorias"
        let categoriesNavigation = UINavigationController(rootViewController: categoriesController)
        categoriesNavigation.tabBarItem = UITabBarItem(title: "TOPICS", image: nil, selectedImage: nil)
        
        self.viewControllers = [categoriesNavigation]
    }

}
