//
//  RemoteDataStore.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation
import OSLog

private let logger = Logger(subsystem: "StarWars", category: "RemoteDataStore")

/// Describes any data store errors
enum DataStoreError: Error {
    // The request couldn't complete
    case requestError(Error)
    // An error from decoding
    case decodingError(Error)
    // Undefined error
    case undefined(Error)
}

/// # Note: The protocols are usually for dependency injection and tests
/// # but haven't been used for the sack of time investment

/// Used to request a star wars object
protocol RemoteDataStoreProtocol {
    // Simplification of a data result with corresponding `DataStoreError`
    typealias DataStoreResult<T> = Result<T, DataStoreError>
    // Request a person by id
    func requestPerson(id: Int) async -> DataStoreResult<Person>
    // Request a film by id
    func requestFilm(id: Int) async -> DataStoreResult<Film>
    // Request a planet by id
    func requestPlanet(id: Int) async -> DataStoreResult<Planet>
    // Request a specie by id
    func requestSpecies(id: Int) async -> DataStoreResult<Species>
    // Request a starship by id
    func requestStarShip(id: Int) async -> DataStoreResult<Starship>
    // Request a vehicle by id
    func requestVehicle(id: Int) async -> DataStoreResult<Vehicle>
}

struct RemoteDataStore: RemoteDataStoreProtocol {
    // The data source is depending strongly on the `StarWarsAPI`
    typealias TargetType = StarWarsAPI
    // Note: I usually would use some kind of dependency injection
    let networker = Networker<TargetType>()
    // Note: I usually would use some kind of dependency injection
    let decoder = JSONDecoder()

    // MARK: RemoteDataStoreProtocol

    func requestPerson(id: Int) async -> DataStoreResult<Person> {
        await request(target: .people(id: id))
    }

    func requestFilm(id: Int) async -> DataStoreResult<Film> {
        await request(target: .film(id: id))
    }

    func requestPlanet(id: Int) async -> DataStoreResult<Planet> {
        await request(target: .planet(id: id))
    }

    func requestSpecies(id: Int) async -> DataStoreResult<Species> {
        await request(target: .specie(id: id))
    }

    func requestStarShip(id: Int) async -> DataStoreResult<Starship> {
        await request(target: .starship(id: id))
    }

    func requestVehicle(id: Int) async -> DataStoreResult<Vehicle> {
        await request(target: .vehicle(id: id))
    }

    // MARK: Private functions

    //# Note: Could be put into a BaseDataStore
    // Networking request that returns a corresponding Result object
    private func request<T: Decodable>(target: TargetType) async -> DataStoreResult<T> {
        do {
            let data = try await networker.request(target)
            let type = try decoder.decode(T.self, from: data)
            return .success(type)
        } catch let error as NetworkingError {
            logger.error("A networking error occurred: \(error.description)")
            return .failure(.requestError(error))
        } catch let error as DecodingError {
            logger.error("Couldn't decode type: `\(T.self)`, error: \(error)")
            return .failure(.decodingError(error))
        } catch {
            logger.error("Another error occurred: \(error.localizedDescription)")
            return .failure(.undefined(error))
        }
    }
}
