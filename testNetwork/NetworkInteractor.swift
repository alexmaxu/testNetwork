//
//  NetworkInteractor.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

protocol NetworkInteractor {
    var session: URLSession { get }
}

extension NetworkInteractor {
 
    func getJSONFromURL<T> (request: URLRequest, type: T.Type) async throws -> T where T:Codable {
        print("1")
        let (data, responseHTTP) = try await session.getData(request: request)
        print("3")
        guard responseHTTP.statusCode == 200 else {
            throw NetworkError.statusCodeError(responseHTTP.statusCode)
        }
        
        do {
            print("4")
            return try JSONDecoder().decode(type, from: data)
        } catch {
            throw NetworkError.JSONDecoderError(error)
        }
    }
    
}
