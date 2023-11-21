//
//  Species.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

struct Species: Codable, Hashable {
    // The name of this species.
    var name: String

    // The classification of this species, such as "mammal" or "reptile".
    var classification: String

    // The designation of this species, such as "sentient".
    var designation: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The average height of this species in centimeters.
    var average_height: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The average lifespan of this species in years.
    var average_lifespan: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // A comma-separated string of common eye colors for this species, "none" if this species does not typically have eyes.
    var eye_colors: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // A comma-separated string of common hair colors for this species, "none" if this species does not typically have hair.
    var hair_colors: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // A comma-separated string of common skin colors for this species, "none" if this species does not typically have skin.
    var skin_colors: String

    // The language commonly spoken by this species.
    var language: String

    // The URL of a planet resource, a planet that this species originates from.
    var homeworld: String

    // An array of People URL Resources that are a part of this species.
    var people: [String]

    // An array of Film URL Resources that this species has appeared in.
    var films: [String]

    // The hypermedia URL of this resource.
    var url: String

    // The ISO 8601 date format of the time that this resource was created.
    var created: String

    // The ISO 8601 date format of the time that this resource was edited.
    var edited: String
}
