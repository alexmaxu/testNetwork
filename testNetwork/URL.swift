//
//  URL.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

let mainURL = URL(string: "https://rickandmortyapi.com/api")!

extension URL {
    static let getCharactersURL = mainURL.appending(path: "character")
}
