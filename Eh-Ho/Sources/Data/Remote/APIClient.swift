//
//  APIClient.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

final class SessionAPI {
    
    lazy var session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        return session
    }()
    
    func send<T: APIRequest>(request: T, completion: @escaping(Result<T.Response, Error>) -> ()) {
        let request = request.requestWithBaseUrl()
        
        let task = session.dataTask(with: request) { data, response, error in
            do {
                if let data = data {
                    //print(String(data: data, encoding: .utf8)!)
                    let model = try JSONDecoder().decode(T.Response.self, from: data)
                    //print (model)
                    DispatchQueue.main.async {
                        completion(.success(model))
                    }
                }
            } catch let error {
                // ** Hacer el tema de los errores como lo hemos hecho otras veces
                print ("ERRRRRRRROR en el DECODE")
                print(error)
                
                //completion(.failure(""))
            }
            
        }
        task.resume()
    }
}
