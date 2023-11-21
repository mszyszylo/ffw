//
//  Film+View.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

struct VehicleView: View {
    let vehicles: Set<Vehicle>
    //# Note: I'm not showing everything for the sake of time investment
    var body: some View {
        if vehicles.isEmpty {
            Text("None")
        }
        ForEach(Array(vehicles), id: \.self) { vehicle in
            NavigationLink(vehicle.name) {
                Form {
                    LabeledContent("Model:", value: vehicle.model.description)
                    LabeledContent("Vehicle class:", value: vehicle.vehicle_class.description)
                    LabeledContent("Length:", value: vehicle.length.description)
                    LabeledContent("Created:", value: vehicle.created.iso8601Formatted())
                }
                .navigationBarTitle(vehicle.name)
            }
        }
    }
}
