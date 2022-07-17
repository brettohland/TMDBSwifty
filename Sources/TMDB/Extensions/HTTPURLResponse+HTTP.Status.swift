//
//  HTTPURLResponse+HTTP.Status.swift
//  
//
//  Created by brett ohland on 07/12/22.
//

import Foundation

extension HTTPURLResponse {
    var status: HTTP.Status {
        .init(statusCode: statusCode)
    }
}
