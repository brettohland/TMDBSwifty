//
//  TitleIDEncoded.swift
//  
//
//  Created by brett ohland on 07/16/22.
//

import Foundation

@propertyWrapper
struct TitleIDEncoded {
    let wrappedValue: Int
}

extension TitleIDEncoded: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        guard let decodedId = try? container.decode(Int.self) else {
            throw TMDB.RequestError.titleIDMissing
        }
        wrappedValue = decodedId
    }
}

extension TitleIDEncoded: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue)
    }
}
