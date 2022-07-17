//
//  ReleaseDateEncoded.swift
//
//
//  Created by brett ohland on 07/16/22.
//

import Foundation

@propertyWrapper
struct ReleaseDateOrNilEncoded {
    let wrappedValue: Date?
}

extension ReleaseDateOrNilEncoded: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        wrappedValue = try? Date(
            (try? container.decode(String.self)) ?? "",
            strategy: Date.ReleaseDateFormatStyle.ParseStrategy()
        )
    }
}

extension ReleaseDateOrNilEncoded: Encodable {
    func encode(to encoder: Encoder) throws {
        guard let wrappedValue else {
            return
        }
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue.formatted(Date.ReleaseDateFormatStyle()))
    }
}
