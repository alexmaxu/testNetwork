//
//  URLRequest.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

extension URLRequest {
    
   static func getCharactersURLRequest(url: URL, page: Int) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.url?.append(queryItems: [.page(page)])
        return request
    }
}

extension URLQueryItem {
    static func page(_ page: Int) -> URLQueryItem {
        URLQueryItem(name: "page", value: "\(page)")
    }
}
