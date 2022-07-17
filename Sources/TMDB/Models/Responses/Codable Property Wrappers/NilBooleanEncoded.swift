//
//  File.swift
//  
//
//  Created by brett ohland on 07/16/22.
//

import Foundation

@propertyWrapper
struct NilBooleanEncoded {
    let wrappedValue: Bool
}

extension NilBooleanEncoded: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        wrappedValue = (try? container.decode(Bool.self)) ?? false
    }
}

extension NilBooleanEncoded: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue)
    }
}
