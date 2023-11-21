//
//  Film+View.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

struct PersonView: View {
    let persons: Set<Person>
    //# Note: I'm not showing everything for the sake of time investment
    var body: some View {
        if persons.isEmpty {
            Text("None")
        }
        ForEach(Array(persons), id: \.self) { person in
            NavigationLink(person.name) {
                Form {
                    LabeledContent("Birth year:", value: person.birth_year.description)
                    LabeledContent("Eye color:", value: person.eye_color.description)
                    LabeledContent("Gender:", value: person.gender.description)
                    LabeledContent("Created:", value: person.created.iso8601Formatted())
                }
                .navigationBarTitle(person.name)
            }
        }
    }
}
