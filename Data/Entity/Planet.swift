//
//  Planet.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

struct Planet: Codable, Hashable {
    // The name of this planet.
    var name: String

    // The diameter of this planet in kilometers.
    var diameter: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The number of standard hours it takes for this planet to complete a single rotation on its axis.
    var rotation_period: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The number of standard days it takes for this planet to complete a single orbit of its local star.
    var orbital_period: String

    // A number denoting the gravity of this planet, where "1" is normal or 1 standard G. "2" is twice or 2 standard Gs. "0.5" is half or 0.5 standard Gs.
    var gravity: String

    // The average population of sentient beings inhabiting this planet.
    var population: String

    // The climate of this planet. Comma separated if diverse.
    var climate: String

    // The terrain of this planet. Comma separated if diverse.
    var terrain: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The percentage of the planet surface that is naturally occurring water or bodies of water.
    var surface_water: String

    // An array of People URL Resources that live on this planet.
    var residents: [String]

    // An array of Film URL Resources that this planet has appeared in.
    var films: [String]

    // The hypermedia URL of this resource.
    var url: String

    // The ISO 8601 date format of the time that this resource was created.
    var created: String

    // The ISO 8601 date format of the time that this resource was edited.
    var edited: String
}
