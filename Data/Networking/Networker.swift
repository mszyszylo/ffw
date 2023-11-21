//
//  Networker.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation
import OSLog

private let logger = Logger(subsystem: "StarWars", category: "Networker")

/// Describes any networking errors
enum NetworkingError: Error {
    // The server response wasn't valid
    case invalidServerResponse(Int)
    // An undefined error occurred. Should never happen
    case undefined

    var description: String {
        switch self {
        case .invalidServerResponse(let statusCode):
            return "Failed with response code: \(statusCode)!"
        case .undefined:
            return "Failed with undefined error!"
        }
    }
}

/// Handles networking requests of any defined `TargetType`
struct Networker<T: TargetType> {
    let urlSession = URLSession.shared

    // A mere request of given TargetType that returns a data object
    // based on TargetType definitions
    func request(_ target: T) async throws -> Data {
        var request = URLRequest(url: URL(target: target), timeoutInterval: 5)
        request.httpMethod = target.method.rawValue
        request.allHTTPHeaderFields = target.headers

        logger.debug("Try to request \(request.url?.absoluteString ?? "")")
        let (data, response) = try await urlSession.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkingError.undefined
        }

        guard httpResponse.statusCode == 200 else {
            throw NetworkingError.invalidServerResponse(httpResponse.statusCode)
        }
        logger.debug("Request succeeded with response code: \(httpResponse.statusCode)!")

        return data
    }
}
