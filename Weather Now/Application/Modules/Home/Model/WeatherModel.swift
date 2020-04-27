//
//  WeatherModel.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

struct WeatherModel: WeatherModelType {
    let temp: Float
}

extension WeatherModel {
    init(model: WeatherModelType) {
        self.temp = {
            //Convert to Celsius
            return model.temp
        }()
    }
}

