//
//  Film+View.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

struct PlanetView: View {
    let planets: Set<Planet>
    //# Note: I'm not showing everything for the sake of time investment
    var body: some View {
        if planets.isEmpty {
            Text("None")
        }
        ForEach(Array(planets), id: \.self) { planet in
            NavigationLink(planet.name) {
                Form {
                    LabeledContent("Diameter:", value: planet.diameter.description)
                    LabeledContent("Rotation period:", value: planet.rotation_period.description)
                    LabeledContent("Orbital Period:", value: planet.orbital_period.description)
                    LabeledContent("Created:", value: planet.created.iso8601Formatted())
                }
                .navigationBarTitle(planet.name)
            }
        }
    }
}
