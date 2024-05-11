//
//  NetworkError.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import Foundation

enum NetworkError: LocalizedError {
    case notCastableResponse
    
    case statusCodeError(Int)
    
    case JSONDecoderError(Error)
    
    var errorDescription: String {
        switch self {
        case .notCastableResponse:
            "Response can not cast to an HTTPUrlResponse"
        case .statusCodeError(let statusCode):
            "Error status code \(statusCode)"
        case .JSONDecoderError(let JSONError):
            "Decoding JSON Error \(JSONError)"
        }
    }
}
