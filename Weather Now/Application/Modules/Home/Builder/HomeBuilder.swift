//
//  File.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation
import UIKit

class HomeBuilder: BuilderType {
    
    func build() -> UIViewController {
        //let interactor
        //let router
        let presenter = HomePresenter()
        //let dataSource
        //let delegate
        let view = HomeViewController<HomePresenter>.init(presenter: presenter)
        
        //interactor.delegate = presenter
        //presenter.delegate
        //router.baseView = view
        return view
    }
    
}
