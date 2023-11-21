//
//  GetFilmUsecase.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

// Simplification of a data result with corresponding `DataStoreError`
typealias RepositoryResult<T> = Result<T, DataStoreError>

extension RepositoryResult {
    // Get a respective `UseCaseResult`
    func mapToUseCaseResult() -> UseCaseResult<Success> {
        switch self {
        case .success(let data):
            return .success(data)
        case .failure:
            return .failure(.unreachable)
        }
    }
}
