//
//  URLSession.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

extension URLSession {
    func getData(request: URLRequest) async throws -> (data: Data, response: HTTPURLResponse) {
        let (data, response) = try await data(for: request)
        print("2")
        
        guard let responseHTTP = response as? HTTPURLResponse else {
            throw NetworkError.notCastableResponse
        }
        print("\(responseHTTP.statusCode)")
        return (data, responseHTTP)
    }
}
