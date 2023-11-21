//
//  Film+View.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

struct StarShipView: View {
    let starships: Set<Starship>
    //# Note: I'm not showing everything for the sake of time investment
    var body: some View {
        if starships.isEmpty {
            Text("None")
        }
        ForEach(Array(starships), id: \.self) { starShip in
            NavigationLink(starShip.name) {
                Form {
                    LabeledContent("Model:", value: starShip.model.description)
                    LabeledContent("Starship class:", value: starShip.starship_class.description)
                    LabeledContent("Manufacturer:", value: starShip.manufacturer.description)
                    LabeledContent("Created:", value: starShip.created.iso8601Formatted())
                }
                .navigationBarTitle(starShip.name)
            }
        }
    }
}
