//
//  QueryValueRepresentable.swift
//
//
//  Created by brett ohland on 07/12/22.
//

import Foundation

public protocol QueryValueRepresentable {
    var queryValue: String { get }
}

extension Locale: QueryValueRepresentable {
    public var queryValue: String {
        identifier
    }
}

extension StringLiteralType: QueryValueRepresentable {
    public var queryValue: String {
        self
    }
}

extension Bool: QueryValueRepresentable {
    public var queryValue: String {
        self ? "true" : "false"
    }
}

extension Int: QueryValueRepresentable {
    public var queryValue: String {
        String(self)
    }
}

extension Double: QueryValueRepresentable {
    public var queryValue: String {
        String(self)
    }
}

extension Array: QueryValueRepresentable where Element == StringLiteralType {
    public var queryValue: String {
        map { $0.description }.joined(separator: ",")
    }
}

extension Date: QueryValueRepresentable {
    public var queryValue: String {
        formatted(Date.ReleaseDateFormatStyle())
    }
}

extension Locale.Region: QueryValueRepresentable {
    public var queryValue: String {
        identifier
    }
}

extension TimeZone: QueryValueRepresentable {
    public var queryValue: String {
        identifier
    }
}
