//
//  ContentView.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

struct ContentView: View {
    @State private var model = ViewModel()

    var body: some View {
        NavigationStack {
            list
            grabTitle
            Divider()
            grabGrid
        }
        .buttonStyle(.bordered)
    }

    var list: some View {
        List {
            Section("Films") {
                FilmView(films: model.films)
            }
            Section("Persons") {
                PersonView(persons: model.persons)
            }
            Section("Star Ships") {
                StarShipView(starships: model.starships)
            }
            Section("Planets") {
                PlanetView(planets: model.planets)
            }
            Section("Species") {
                SpeciesView(species: model.species)
            }
            Section("Vehicles") {
                VehicleView(vehicles: model.vehicles)
            }
        }
    }

    var grabTitle: some View {
        HStack {
            if let errorView = model.error?.descriptionView {
                errorView
            }  else if model.exists {
                Text("You already grabbed that one!")
            } else {
                Text(model.isLoading ? "Grabbing...": "Grab a...")
                    .fontWeight(.black)
            }
        }
    }

    var grabGrid: some View {
        LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: 100))]) {
            Button("Film") {
                Task {
                    await model.getARandomStarWarsFilm()
                }
            }
            Button("Person") {
                Task {
                    await model.getARandomStarWarsPerson()
                }
            }
            Button("Vehicle") {
                Task {
                    await model.getARandomStarWarsVehicle()
                }
            }
            Button("Star ship") {
                Task {
                    await model.getARandomStarWarsStarShip()
                }
            }
            Button("Planet") {
                Task {
                    await model.getARandomStarWarsPlanet()
                }
            }
            Button("Specie") {
                Task {
                    await model.getARandomStarWarsSpecies()
                }
            }
        }
        .disabled(model.isLoading)
        .opacity(model.isLoading ? 0.5 : 1)
    }
}

#Preview {
    ContentView()
}
