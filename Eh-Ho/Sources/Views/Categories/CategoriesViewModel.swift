//
//  CategoriesViewModel.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 24/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

class CategoriesViewModel {
    
    weak var view: CategoriesViewControllerProtocol?
    let router: CategoriesRouter
    let categoriesRepository: CategoriesRepository
    
    init(router: CategoriesRouter, categoriesRepository: CategoriesRepository) {
        self.router = router
        self.categoriesRepository = categoriesRepository
    }
    
    // Esta funcion la creamos nosotros, no viene como las del VC
    func viewDidLoad() {
//        fetchLatestTopics()
        fetchCategories()
    }
    
    func didTapInCategory(id: Int) {
        print("Hemos pulsado una categoria")
        router.navigateToTopicsListInCategory(id: id)
    }
    
    private func fetchCategories() {
        categoriesRepository.getCategories { [weak self] (result) in
//            fetchSuperheroes() { [weak self] (result) in
            
            switch result {
            case .success(let value):
                self?.view?.showCategories(categories: value.categoryList.categories)
            case .failure:
                self?.view?.showError(with: "Error") // Modificar tambien aqui para poner el Error OK.
                print ("Error en el fetchCategories")
            }
        }
    }
    
//    private func fetchSuperheroes(completion: @escaping(Result<CategoriesResponse, Error>) -> ()) {
//        let configuration = URLSessionConfiguration.default
//        let session = URLSession(configuration: configuration)
//        
//        guard let url = URL(string: "https://mdiscourse.keepcoding.io/categories.json?Content-Type=application/json&Api-Key=58a1eb95bb6764a783c0052f4387f78f42dd8772d8fa65e90d45f5a2fe14ffd3&Api-Username=ltolosana") else {
//            fatalError()
//        }
//        
//        let task = session.dataTask(with: url) { data, response, error in
//            do {
//                if let data = data {
//                    let model = try JSONDecoder().decode(CategoriesResponse.self, from: data)
////                    completion(.success(model.categoryList))
//                } else {
//                    //completion(.failure(.unknown))
//                    print("Error del ELSE")
//                }
//            } catch _ {
//                //completion(.failure(.unknown))
//                print ("Error del catch")
//            }
//        }
//        task.resume()
//    }
    
}

