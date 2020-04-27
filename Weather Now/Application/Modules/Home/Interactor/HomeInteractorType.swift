//
//  HomeInteractorType.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

enum HomeInteractorError: Error {
    case loadError
    case networkError
}

protocol HomeInteractorDelegate: class {
    func didUpdate(model: WeatherModelType)
}

protocol HomeInteractorType {
    func loadWheather(for model: WeatherModelType)
}
