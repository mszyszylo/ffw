//
//  Person.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

struct Person: Codable, Hashable {
    // The name of this person.
    var name: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The birth year of the person, using the in-universe standard of BBY or ABY.
    var birth_year: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The eye color of this person. Will be "unknown" if not known or "n/a" if the person does not have an eye.
    var eye_color: String

    // The gender of this person. Either "Male", "Female" or "unknown", "n/a" if the person does not have a gender.
    var gender: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The hair color of this person. Will be "unknown" if not known or "n/a" if the person does not have hair.
    var hair_color: String

    // The height of the person in centimeters.
    var height: String

    // The mass of the person in kilograms.
    var mass: String

    //# Note: For the sake of simplicity did i name the variables the same as the json provides
    //# to skip a explicit Codable declaration
    //
    // The skin color of this person.
    var skin_color: String

    // The URL of a planet resource, a planet that this person was born on or inhabits.
    var homeworld: String

    // An array of film resource URLs that this person has been in.
    var films: [String]

    // An array of species resource URLs that this person belongs to.
    var species: [String]

    // An array of starship resource URLs that this person has piloted.
    var starships: [String]

    // An array of vehicle resource URLs that this person has piloted.
    var vehicles: [String]

    // The hypermedia URL of this resource.
    var url: String

    // The ISO 8601 date format of the time that this resource was created.
    var created: String

    // The ISO 8601 date format of the time that this resource was edited.
    var edited: String
}

