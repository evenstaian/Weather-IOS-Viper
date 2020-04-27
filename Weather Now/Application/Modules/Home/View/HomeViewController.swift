//
//  HomeViewController.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

class HomeViewController<P: HomePresenterType> : ViperViewController<P> {
    
    override init(presenter: P){
        self.view.backgroundColor = .red
        super.init(presenter: presenter)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
