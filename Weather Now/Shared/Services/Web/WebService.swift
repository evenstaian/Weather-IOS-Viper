//
//  WebService.swift
//  Weather Now
//
//  Created by Evens Taian on 28/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

class WebService : WebServiceType {
    
    func getData(urlString: String, completion complete: @escaping (WebServiceTypeDataResult) -> Void) {
        guard
                let url = URL(string: urlString) else {
                complete(.failure(.invalidUrl))
                return
            }
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard error == nil else {
                    complete(.failure(.networkError(error!)))
                    return
                }
                guard let data = data else {
                    complete(.failure(.noData))
                    return
                }
                complete(.success(data))
                }.resume()
        }
    
}
