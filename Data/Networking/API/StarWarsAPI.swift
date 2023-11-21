//
//  StarWarsAPI.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

/// # Note: One general API is enough to showcase the scenario.
/// # Note: The documentation showcases more request possibilities which
/// # normally would result into e.g: `FilmAPI.swift` with `case all` and `case film(id: Int)` and so on...
public enum StarWarsAPI {
    case film(id: Int)
    case people(id: Int)
    case planet(id: Int)
    case specie(id: Int)
    case starship(id: Int)
    case vehicle(id: Int)
}

extension StarWarsAPI: TargetType {
    var baseURL: URL {
        URL(string: "https://swapi.dev/api/")!
    }

    var path: String {
        switch self {
        case let .film(id):
            "films/\(id)/"
        case let .people(id):
            "people/\(id)/"
        case let .planet(id):
            "planets/\(id)/"
        case let .specie(id):
            "species/\(id)/"
        case let .starship(id):
            "starships/\(id)/"
        case let .vehicle(id):
            "vehicles/\(id)/"
        }
    }

    var method: HTTPMethod {
        .get
    }

    var headers: [String : String]? {
        ["Content-type": "application/json"]
    }
}
