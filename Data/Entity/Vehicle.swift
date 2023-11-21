//
//  Vehicle.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

struct Vehicle: Codable, Hashable {
    // The name of this vehicle. The common name, such as "Sand Crawler" or "Speeder bike".
    var name: String

    // The model or official name of this vehicle. Such as "All-Terrain Attack Transport".
    var model: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The class of this vehicle, such as "Wheeled" or "Repulsorcraft".
    var vehicle_class: String

    // The manufacturer of this vehicle. Comma separated if more than one.
    var manufacturer: String

    // The length of this vehicle in meters.
    var length: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The cost of this vehicle new, in Galactic Credits.
    var cost_in_credits: String

    // The number of personnel needed to run or pilot this vehicle.
    var crew: String

    // The number of non-essential people this vehicle can transport.
    var passengers: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The maximum speed of this vehicle in the atmosphere.
    var max_atmosphering_speed: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The maximum number of kilograms that this vehicle can transport.
    var cargo_capacity: String

    // The maximum length of time that this vehicle can provide consumables for its entire crew without having to resupply.
    var consumables: String?

    // An array of Film URL Resources that this vehicle has appeared in.
    var films: [String]

    // An array of People URL Resources that this vehicle has been piloted by.
    var pilots: [String]

    // The hypermedia URL of this resource.
    var url: String

    // The ISO 8601 date format of the time that this resource was created.
    var created: String

    // The ISO 8601 date format of the time that this resource was edited.
    var edited: String
}
