//
//  WeatherDataManagerType.swift
//  Weather Now
//
//  Created by Evens Taian on 28/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

enum WeatherDataManagerError: Error {
    case loadError
}

typealias WeatherDataManagerTypeResult = Result<[Any]?, WeatherDataManagerError>

protocol WeatherDataManagerType: class{
    func load(completion: @escaping (WeatherDataManagerTypeResult) -> Void)
}
