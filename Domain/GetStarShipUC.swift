//
//  GetStarShipUC.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

/// # Note: The protocols are usually for dependency injection and tests
/// # but haven't been used for the sack of time investment
/// 
/// Use to retrieve a film from the star wars api
protocol GetStarShipUCProtocol {
    // Request a film by id
    func callAsFunction(id: Int) async -> UseCaseResult<Starship>
}

struct GetStarShipUC: GetStarShipUCProtocol {
    // Note: I usually would use some kind of dependency injection
    let repository = Repository()

    // MARK: GetStarShipUCProtocol

    func callAsFunction(id: Int) async -> UseCaseResult<Starship> {
        await repository.requestStarShip(id: id)
            .mapToUseCaseResult()
    }
}
