//
//  ListVM.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

final class CharacterListVM: ObservableObject{
    let interactor: RMortyInteractor
    
    @Published var characters: [RMortyCharacter] = []
    
    var page = 1
    
    init(interactor: RMortyInteractor = .shared) {
        self.interactor = interactor
        Task {
            await getRMortyCharacters()
        }
    }
    
    func getRMortyCharacters() async  {
        do {
            print("6")
            let resultCharacters = try await interactor.fetchRMortyCharacters(page: page)
            await MainActor.run {
                self.characters += resultCharacters.results
                print("7")
            }
            
        } catch {
            print(error)
        }
    }
    
}
