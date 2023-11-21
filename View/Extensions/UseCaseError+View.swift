//
//  GetFilmUsecase.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

/// Describes a view friendly error
extension UseCaseError {
    // The server seems to be unreachable view
    var descriptionView: some View {
        Text("Some Error occurred! - Try again!")
            .foregroundStyle(Color.red)
    }
}
