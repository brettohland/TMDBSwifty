//
//  TMDB.swift
//
//
//  Created by brett ohland on 07/12/22.
//

import Foundation

public struct TMDB {

    let httpClient: HTTP.Client

    public init(authToken: String) {
        httpClient = HTTP.Client(authToken: authToken)
    }

    let discover = Discover()
    let configuration = Endpoint<Configuration.Response>.init(path: "/configuration", method: .get)
}

// MARK: - Discover endpoints

public extension TMDB {

    func discoverMovie( with options: [TMDBDiscoverMovieFilter] = [] ) async throws -> TMDB.Discover.MovieResponse {
        let request = try discover.movie.makeURLRequest(with: options.map { $0.encoded })
        return try await discover.movie.responseObject(from: request, using: httpClient)
    }

    func discoverTV(with options: [TMDBDiscoverTVFilter] = []) async throws -> TMDB.Discover.TVResponse {
        let request = try discover.tv.makeURLRequest(with: options.map { $0.encoded })
        return try await discover.tv.responseObject(from: request, using: httpClient)
    }
}

// MARK: - Configuration

public extension TMDB {
    func configuration() async throws -> TMDB.Configuration.Response {
        let request = try configuration.makeURLRequest()
        return try await configuration.responseObject(from: request, using: httpClient)
    }
}


