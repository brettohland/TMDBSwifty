//
//  LocaleRegionArrayOrNilEncoded.swift
//  
//
//  Created by brett ohland on 07/16/22.
//

import Foundation

@propertyWrapper
struct LocaleRegionArrayEncoded {
    let wrappedValue: [Locale.Region]
}

extension LocaleRegionArrayEncoded: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        guard let regionStringArray = try? container.decode([String].self) else {
            wrappedValue = []
            return
        }
        wrappedValue = regionStringArray.map { Locale.Region(stringLiteral: $0) }
    }
}

extension LocaleRegionArrayEncoded: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        guard wrappedValue.isEmpty == false else {
            return
        }
        try container.encode(wrappedValue.map { $0.identifier })
    }
}
