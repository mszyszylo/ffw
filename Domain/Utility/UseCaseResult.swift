//
//  GetFilmUsecase.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

/// Simplification of a use case result with corresponding `UseCaseError`
typealias UseCaseResult<T> = Result<T, UseCaseError>
