//
//  RMortyInteractor.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

struct RMortyInteractor: NetworkInteractor {
    var session: URLSession
    
    static let shared = RMortyInteractor()
    
    private init(session: URLSession = .shared) {
        self.session = session
    }
    
    func fetchRMortyCharacters(page: Int) async throws -> ModelResponse {
        print("5")
        return try await getJSONFromURL(request: .getCharactersURLRequest(url: .getCharactersURL, page: page), type: ModelResponse.self)
    }
    
}
