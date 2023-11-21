//
//  Starship.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

struct Starship: Codable, Hashable {
    // The name of this starship. The common name, such as "Death Star".
    var name: String

    // The model or official name of this starship. Such as "T-65 X-wing" or "DS-1 Orbital Battle Station".
    var model: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The class of this starship, such as "Starfighter" or "Deep Space Mobile Battlestation".
    var starship_class: String

    // The manufacturer of this starship. Comma separated if more than one.
    var manufacturer: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The cost of this starship new, in galactic credits.
    var cost_in_credits: String

    // The length of this starship in meters.
    var length: String

    // The number of personnel needed to run or pilot this starship.
    var crew: String

    // The number of non-essential people this starship can transport.
    var passengers: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The maximum speed of this starship in the atmosphere. "N/A" if this starship is incapable of atmospheric flight.
    var max_atmosphering_speed: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The class of this starship's hyperdrive.
    var hyperdrive_rating: String

    // The Maximum number of Megalights this starship can travel in a standard hour.
    var mglt: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The maximum number of kilograms that this starship can transport.
    var cargo_capacity: String

    // The maximum length of time that this starship can provide consumables for its entire crew without having to resupply.
    var consumables: String?

    // An array of Film URL Resources that this starship has appeared in.
    var films: [String]

    // An array of People URL Resources that this starship has been piloted by.
    var pilots: [String]

    // The hypermedia URL of this resource.
    var url: String

    // The ISO 8601 date format of the time that this resource was created.
    var created: String

    // The ISO 8601 date format of the time that this resource was edited.
    var edited: String
}
