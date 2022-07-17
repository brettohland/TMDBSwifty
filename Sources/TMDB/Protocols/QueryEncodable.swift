//
//  File.swift
//  
//
//  Created by brett ohland on 07/12/22.
//

import Foundation

public protocol QueryItemEncodable {
    var encoded: URLQueryItem { get }
}
