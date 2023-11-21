//
//  RemoteDataStore.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

/// # Note: The protocols are usually for dependency injection and tests
/// # but haven't been used for the sack of time investment

/// # Note: In that small scale scenario is the repository useless.
/// # I just wanna tell that this could get in handy if you would combine
/// # multiple requests to abstract the logic that retrieves data from various sources,
/// # such as databases, network services, or in-memory caches.
protocol RepositoryProtocol {
    // Request a person by id
    func requestPerson(id: Int) async -> RepositoryResult<Person>
    // Request a film by id
    func requestFilm(id: Int) async -> RepositoryResult<Film>
    // Request a planet by id
    func requestPlanet(id: Int) async -> RepositoryResult<Planet>
    // Request a specie by id
    func requestSpecies(id: Int) async -> RepositoryResult<Species>
    // Request a starship by id
    func requestStarShip(id: Int) async -> RepositoryResult<Starship>
    // Request a vehicle by id
    func requestVehicle(id: Int) async -> RepositoryResult<Vehicle>
}

struct Repository: RepositoryProtocol {
    // Note: I usually would use some kind of dependency injection
    let remoteDataStore = RemoteDataStore()
    
    // MARK: RepositoryProtocol

    func requestPerson(id: Int) async -> RepositoryResult<Person> {
        await remoteDataStore.requestPerson(id: id)
    }

    func requestFilm(id: Int) async -> RepositoryResult<Film> {
        await remoteDataStore.requestFilm(id: id)
    }

    func requestPlanet(id: Int) async -> RepositoryResult<Planet> {
        await remoteDataStore.requestPlanet(id: id)
    }

    func requestSpecies(id: Int) async -> RepositoryResult<Species> {
        await remoteDataStore.requestSpecies(id: id)
    }

    func requestStarShip(id: Int) async -> RepositoryResult<Starship> {
        await remoteDataStore.requestStarShip(id: id)
    }

    func requestVehicle(id: Int) async -> RepositoryResult<Vehicle> {
        await remoteDataStore.requestVehicle(id: id)
    }
}
