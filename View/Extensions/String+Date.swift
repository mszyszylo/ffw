//
//  String+Date.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import Foundation

extension String {
    // A small formatter for any IOS 8601 string dates
    func iso8601Formatted() -> String {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFullDate]
        return formatter.date(from: self)?.description ?? "None"
    }
}
