//
//  URL+HTTPUrl.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

extension URL {
    /// Initialize URL from `TargetType`.
    init<T: TargetType>(target: T) {
        // When a TargetType's path is empty, URL.appendingPathComponent
        // may introduce trailing /, which may not be wanted in some cases
        let targetPath = target.path
        self = targetPath.isEmpty
            ? target.baseURL
            : target.baseURL.appendingPathComponent(targetPath)
    }
}
