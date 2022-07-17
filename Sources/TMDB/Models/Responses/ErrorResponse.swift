//
//  File.swift
//
//
//  Created by brett ohland on 07/13/22.
//

import Foundation

public extension TMDB {
    struct ErrorResponse: Decodable {
        let statusMessage: String
        let statusCode: String
    }
}
