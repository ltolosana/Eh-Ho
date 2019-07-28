//
//  CategoriesRepository.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 24/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

protocol CategoriesRepository {
    func getCategories(completion: @escaping(Result<CategoriesResponse, Error>) -> ())

}
