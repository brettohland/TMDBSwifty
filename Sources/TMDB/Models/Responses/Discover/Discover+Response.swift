//
//  File.swift
//
//
//  Created by brett ohland on 07/13/22.
//

import Foundation

public extension TMDB.Discover {

    typealias MovieResponse = Response<DiscoverMovie>
    typealias TVResponse = Response<DiscoverTV>

    struct Response<Title: Codable>: Decodable {
        @NilIntegerEncoded
        var page: Int
        @NilIntegerEncoded
        var totalResults: Int
        @NilIntegerEncoded
        var totalPages: Int
        @NilCodableArrayEncoded<Title>
        var results: [Title]
    }

    struct DiscoverTV: Codable {

        // MARK: Common

        let backdropPath: URL?
        @NilCodableArrayEncoded<Int>
        var genreIds: [Int]
        @TitleIDEncoded
        var id: Int
        @LocaleOrNilEncoded
        var originalLanguage: Locale?
        let overview: String?
        let popularity: Double?
        let posterPath: String?
        let voteAverage: Double?
        let voteCount: Int?

        // MARK: TV Specific

        let name: String?
        let originalName: String?
        @LocaleRegionArrayEncoded
        var originCountry: [Locale.Region]
        @ReleaseDateOrNilEncoded
        var firstAirDate: Date?
    }

    struct DiscoverMovie: Codable {

        // MARK: Common

        @NilBooleanEncoded
        var adult: Bool
        let backdropPath: String?
        @NilCodableArrayEncoded<Int>
        var genreIds: [Int]
        @TitleIDEncoded
        var id: Int
        @LocaleOrNilEncoded
        var originalLanguage: Locale?
        let overview: String?
        let popularity: Double?
        let posterPath: String?
        @NilBooleanEncoded
        var video: Bool
        let voteAverage: Double?
        let voteCount: Int?

        // MARK: Movie Specific

        let originalTitle: String?
        let title: String?
        @ReleaseDateOrNilEncoded
        var releaseDate: Date?
    }
}
