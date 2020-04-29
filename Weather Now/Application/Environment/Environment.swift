//
//  Environment.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

class Environment: EnvironmentType {
    
    let loadURLString = "https://api.openweathermap.org/data/2.5/weather"
    let param = "?lat=35&lon=139&appid=d7dae841482cf49486336a90a2f68e8a"
    let webService = WebService()
    
    lazy var homeDataManager: WeatherDataManager = {
        let homeService = HomeService(webService: webService, loadUrlString: loadURLString+param)
        let homeDataManager = WeatherDataManager(service: homeService)
        return homeDataManager
    }()
    
    
}
