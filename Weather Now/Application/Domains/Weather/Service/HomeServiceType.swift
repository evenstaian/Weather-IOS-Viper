//
//  HomeServiceType.swift
//  Weather Now
//
//  Created by Evens Taian on 29/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

enum HomeServiceError : Error {
    case invalidUrl
    case noWeatherData
    case invalidWeatherData
    case networkError(Error)
}

typealias HomeServiceTypeResult = Result<Any, HomeServiceError>

protocol HomeServiceType {
    func load(completion: @escaping (HomeServiceTypeResult) -> Void )
}
