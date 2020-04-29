//
//  WeatherDataManager.swift
//  Weather Now
//
//  Created by Evens Taian on 28/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

class WeatherDataManager : WeatherDataManagerType {
    
    let service: HomeServiceType

    init(service: HomeServiceType) {
        self.service = service
    }
    
    func load(completion complete: @escaping (WeatherDataManagerTypeResult) -> Void) {
        service.load { (result) in
            switch result {
            case .failure(_):
                complete(.failure(.loadError))
            case .success(let entities):
                complete(.success([entities]))
            }
        }
    }
}
