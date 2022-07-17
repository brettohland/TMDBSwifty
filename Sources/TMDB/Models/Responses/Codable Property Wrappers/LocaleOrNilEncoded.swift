//
//  LocaleOrNilEncoded.swift
//  
//
//  Created by brett ohland on 07/16/22.
//

import Foundation

@propertyWrapper
struct LocaleOrNilEncoded {
    let wrappedValue: Locale?
}

extension LocaleOrNilEncoded: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        guard let localeString = try? container.decode(String.self) else {
            wrappedValue = nil
            return
        }
        wrappedValue = Locale(identifier: localeString)
    }
}

extension LocaleOrNilEncoded: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        guard let wrappedValue else {
            return
        }
        try container.encode(wrappedValue.identifier)
    }
}
