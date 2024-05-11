//
//  Model.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

// MARK: - ModelResponse
struct ModelResponse: Codable {
    let info: Info
    let results: [RMortyCharacter]
}

// MARK: - Info
struct Info: Codable {
    let count, pages: Int
    let next: String
    let prev: String?
}

// MARK: - Result
struct RMortyCharacter: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let gender: Gender
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
}

