//
//  GetPlanetUC.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

/// # Note: The protocols are usually for dependency injection and tests
/// # but haven't been used for the sack of time investment
/// 
/// Use to retrieve a film from the star wars api
protocol GetPlanetUCProtocol {
    // Request a film by id
    func callAsFunction(id: Int) async -> UseCaseResult<Planet>
}

struct GetPlanetUC: GetPlanetUCProtocol {
    // Note: I usually would use some kind of dependency injection
    let repository = Repository()

    // MARK: GetVehicleUCProtocol

    func callAsFunction(id: Int) async -> UseCaseResult<Planet> {
        await repository.requestPlanet(id: id)
            .mapToUseCaseResult()
    }
}
