//
//  ViewModel.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation
import OSLog

private let logger = Logger(subsystem: "StarWars", category: "ViewModel")

/// Note: I have only created one view model for the sake of simplicity.
/// You would usually create separate ones for separate views
///
/// Handles the creation of visible user interface data
@Observable class ViewModel {
    // Is a request pending
    var isLoading = false
    // Did a request fail
    var error: UseCaseError?
    // Did a requested data object exists already
    var exists = false
    // All unique films
    var films = Set<Film>()
    // All unique persons
    var persons = Set<Person>()
    // All unique vehicles
    var vehicles = Set<Vehicle>()
    // All unique star ships
    var starships = Set<Starship>()
    // All unique plantes
    var planets = Set<Planet>()
    // All unique species
    var species = Set<Species>()

    // Get a random film
    func getARandomStarWarsFilm() async {
        // Note: I usually would use some kind of dependency injection
        let useCase = GetFilmUC()
        await getARandomStarWarsElement(set: &films, maxId: 7, function: useCase.callAsFunction)
    }

    // Get a random person
    func getARandomStarWarsPerson() async {
        // Note: I usually would use some kind of dependency injection
        let useCase = GetPersonUC()
        await getARandomStarWarsElement(set: &persons, maxId: 83, function: useCase.callAsFunction)
    }

    // Get a random vehicle
    func getARandomStarWarsVehicle() async {
        // Note: I usually would use some kind of dependency injection
        let useCase = GetVehicleUC()
        await getARandomStarWarsElement(set: &vehicles, maxId: 40, function: useCase.callAsFunction)
    }

    // Get a random planet
    func getARandomStarWarsPlanet() async {
        // Note: I usually would use some kind of dependency injection
        let useCase = GetPlanetUC()
        await getARandomStarWarsElement(set: &planets, maxId: 61, function: useCase.callAsFunction)
    }

    // Get a random species
    func getARandomStarWarsSpecies() async {
        // Note: I usually would use some kind of dependency injection
        let useCase = GetSpecieUC()
        await getARandomStarWarsElement(set: &species, maxId: 38, function: useCase.callAsFunction)
    }

    // Get a random star ship
    func getARandomStarWarsStarShip() async {
        // Note: I usually would use some kind of dependency injection
        let useCase = GetStarShipUC()
        await getARandomStarWarsElement(set: &starships, maxId: 37, function: useCase.callAsFunction)
    }

    // MARK: Private functions

    // Handles a get action for given `set` and using `function`
    private func getARandomStarWarsElement<T>(set: inout Set<T>,
                                              maxId: Int,
                                              function: (Int) async -> UseCaseResult<T>) async {
        defer { isLoading = false }
        isLoading = true
        exists = false
        error = nil
        guard let id = (1..<maxId).randomElement() else {
            return
        }
        logger.info("Get a random \(T.self) of \(id)")
        switch await function(id) {
        case .success(let data):
            guard !set.contains(data) else {
                exists = true
                return
            }
            set.insert(data)
        case .failure(let error):
            self.error = error
        }
    }
}
