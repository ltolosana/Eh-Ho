//
//  APIRequest.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import Foundation

let apiURL = "https://mdiscourse.keepcoding.io"

enum Method: String {
    case GET
    case POST
    case PUT
    case DELETE
}

protocol APIRequest: Encodable {
    associatedtype Response: Codable
    var method: Method { get }
    var path: String { get }
    var parameters: [String: String] { get }
    var body: [String: Any] { get }
    var headers: [String: String] { get }
}

// Default implementation of the protocol
extension APIRequest {
    
    var baseURL: URL {
        guard let baseURL = URL(string: apiURL) else {
            fatalError("URL not valid")
        }
        return baseURL
    }
    
    func requestWithBaseUrl() -> URLRequest {
        // Primero, definimos cual va a ser la url con el recurso a llamar
        let url = baseURL.appendingPathComponent(path)
        // Hasta aqui tendriamos por ejemplo: https:// www.google.com/search
        
        // Segundo, si el objeto que lo implementa añade parametros, construimos la url con parametros
        guard var components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
            fatalError("Not able to create components")
        }
        
        if !parameters.isEmpty {
            components.queryItems = parameters.map { URLQueryItem(name: $0, value: $1) }
        }
        
        guard let finalUrl = components.url else {
            fatalError("Unable to retreive final URL")
        }
        // Aqui tendriamos la url completa de google de una busqueda con el ? - por ejemplo: https:// www.google.com/search?q=hola&...
        
        // Ahora a partir de una url, podemos construir nuestro objeto URLRequest, que lo necesitamos para crear la task de URLSession
        var request = URLRequest(url: finalUrl)
        
        // Aqui definimos el verbo a usar: GET, POST, ...
        request.httpMethod = method.rawValue
        
        // Aqui añadimos el body si el objeto que lo implementa añade body
        if !body.isEmpty {
            let jsonData = try? JSONSerialization.data(withJSONObject: body)
            request.httpBody = jsonData
        }
        
        // Aqui vamos definiendo las cabeceras de nuestra peticion
        // Aunque esto realmente no deberia estar aqui sino en un sitio aparte algo mas protegido (tanto el API-KEY como el userId
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        // API-KEY: **los numeros que estan** Necesario para que el servidor nos reconozca
        request.addValue("58a1eb95bb6764a783c0052f4387f78f42dd8772d8fa65e90d45f5a2fe14ffd3", forHTTPHeaderField: "Api-Key")
        //  API-Username, necesario para que el servidor nos reconozca
        // Para la practica, cambiar el usuario nach por el que usamos para registrarnos
//        request.addValue("nach", forHTTPHeaderField: "Api-Username") // **** Aqui hay que poner nuestro nombre de usuario
        request.addValue("ltolosana", forHTTPHeaderField: "Api-Username")
        
        return request
    }
}
