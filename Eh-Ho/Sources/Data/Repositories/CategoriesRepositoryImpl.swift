//
//  CategoriesRepositoryImpl.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 24/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

class CategoriesRepositoryIMPL: CategoriesRepository {
    
    let session: SessionAPI
    
    init(session: SessionAPI) {
        self.session = session
    }
    
    func getCategories(completion: @escaping (Result<CategoriesResponse, Error>) -> ()) {
        let request = CategoriesRequest()
        session.send(request: request) { result in
            completion(result)
        }
    }
}
