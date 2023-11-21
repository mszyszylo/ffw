//
//  Film.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

struct Film: Codable, Hashable {
    // The title of this film.
    var title: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    // The episode number of this film.
    var episode_id: Int

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The opening paragraphs at the beginning of this film.
    var opening_crawl: String

    // The name of the director of this film.
    var director: String

    // The name(s) of the producer(s) of this film. Comma separated.
    var producer: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The ISO 8601 date format of film release at the original creator country.
    var release_date: String

    // An array of species resource URLs that are in this film.
    var species: [String]

    // An array of starship resource URLs that are in this film.
    var starships: [String]

    // An array of vehicle resource URLs that are in this film.
    var vehicles: [String]

    // An array of people resource URLs that are in this film.
    var characters: [String]

    // An array of planet resource URLs that are in this film.
    var planets: [String]

    // The hypermedia URL of this resource.
    var url: String

    // The ISO 8601 date format of the time that this resource was created.
    var created: String

    // The ISO 8601 date format of the time that this resource was edited.
    var edited: String
}
