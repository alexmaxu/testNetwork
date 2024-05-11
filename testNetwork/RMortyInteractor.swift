//
//  RMortyInteractor.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

struct RMortyInteractor: NetworkInteractor {
    var session: URLSession
    
    private init(session: URLSession = .shared) {
        self.session = session
    }
    
    func fetchRMortyCharacters(page: Int) async throws -> ModelResponse {
        try await getJSONFromURL(request: .getCharactersURLRequest(url: .getCharactersURL, page: page), type: ModelResponse.self)
    }
    
}
