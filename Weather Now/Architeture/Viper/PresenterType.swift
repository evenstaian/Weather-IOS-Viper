//
//  PresenterType.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

protocol PresenterType: class {
    func viewWillBecomeActive()
    func viewDidBecomeInactive()
}

extension PresenterType {
    func viewDidBecomeInactive() {
        
    }
}
