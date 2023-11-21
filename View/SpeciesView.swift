//
//  Film+View.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

struct SpeciesView: View {
    let species: Set<Species>
    //# Note: I'm not showing everything for the sake of time investment
    var body: some View {
        if species.isEmpty {
            Text("None")
        }
        ForEach(Array(species), id: \.self) { specie in
            NavigationLink(specie.name) {
                Form {
                    LabeledContent("Classification:", value: specie.classification.description)
                    LabeledContent("Designation:", value: specie.designation.description)
                    LabeledContent("Average Height:", value: specie.average_height.description)
                    LabeledContent("Created:", value: specie.created.iso8601Formatted())
                }
                .navigationBarTitle(specie.name)
            }
        }
    }
}
