//
//  TargetType.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

/// The protocol used to define the specifications necessary for an `API`.
protocol TargetType {
    // The target's base `URL`.
    var baseURL: URL { get }
    // The path to be appended to `baseURL` to form the full `URL`.
    var path: String { get }
    // The HTTP method used in the request.
    var method: HTTPMethod { get }
    // The headers to be used in the request.
    var headers: [String: String]? { get }
}
