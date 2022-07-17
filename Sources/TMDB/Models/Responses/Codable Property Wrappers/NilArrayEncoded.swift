//
//  File.swift
//  
//
//  Created by brett ohland on 07/16/22.
//

import Foundation

@propertyWrapper
struct NilCodableArrayEncoded<T: Codable> {
    let wrappedValue: [T]
}

extension NilCodableArrayEncoded: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        guard let array = try? container.decode([T].self) else {
            wrappedValue = []
            return
        }
        wrappedValue = array
    }
}

extension NilCodableArrayEncoded: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        guard wrappedValue.isEmpty == false else {
            return
        }
        try container.encode(wrappedValue)
    }
}
