//
//  HomeViewModel.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

struct HomeViewModel: HomeViewModelType {
    var celcius: Float
}

extension HomeViewModel {
    init(model: WeatherModelType) {
        self.celcius = model.temp
    }
}
