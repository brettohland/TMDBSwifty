//
//  TMDBDiscoverFilter.swift
//  
//
//  Created by brett ohland on 07/15/22.
//

import Foundation

public protocol TMDBDiscoverFilter: QueryItemEncodable {
    var key: String { get }
    var value: String { get }
}

public extension TMDBDiscoverFilter {
    var encoded: URLQueryItem {
        URLQueryItem(name: key, value: value)
    }
}

public protocol TMDBDiscoverMovieFilter: TMDBDiscoverFilter {}

public protocol TMDBDiscoverTVFilter: TMDBDiscoverFilter {}
