//
//  Configuration.swift
//
//
//  Created by brett ohland on 07/17/22.
//

import Foundation

public extension TMDB {

    enum Configuration {}
}

public extension TMDB.Configuration {

    struct Response: Codable {
        let images: ImageConfiguration?
        @NilCodableArrayEncoded
        var changeKeys: [String]
    }

    struct ImageConfiguration: Codable {
        let baseUrl: URL?
        let secureBaseUrl: URL?
        @NilCodableArrayEncoded
        var backdropSizes: [String]
        @NilCodableArrayEncoded
        var logoSizes: [String]
        @NilCodableArrayEncoded
        var posterSizes: [String]
        @NilCodableArrayEncoded
        var profileSizes: [String]
        @NilCodableArrayEncoded
        var stillSizes: [String]
    }
}
