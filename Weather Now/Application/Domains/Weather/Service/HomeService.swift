//
//  HomeService.swift
//  Weather Now
//
//  Created by Evens Taian on 29/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

class HomeService: HomeServiceType {
    
    let webService: WebServiceType
    let loadUrlString: String
    
    init(webService: WebServiceType, loadUrlString: String){
        self.webService = webService
        self.loadUrlString = loadUrlString
    }
    
    func load(completion complete: @escaping (HomeServiceTypeResult) -> Void) {
        webService.getData(urlString: loadUrlString) { (result) in
            switch result {
            case .failure(let error):
                switch error {
                case .invalidUrl:
                    complete(.failure(.invalidUrl))
                case .noData:
                    complete(.failure(.noWeatherData))
                case .networkError(let error):
                    complete(.failure(.networkError(error)))
                case .jsonParseError:
                    complete(.failure(.invalidWeatherData))
                }
            case .success(let json):
                print("TODO", json)
            }
        }
    }
    
    
    
}
