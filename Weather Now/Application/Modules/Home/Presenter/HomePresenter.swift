//
//  HomePresenter.swift
//  Weather Now
//
//  Created by Evens Taian on 27/04/20.
//  Copyright © 2020 Evens Taian. All rights reserved.
//

import Foundation

class HomePresenter: HomePresenterType {
    
    let interactor: HomeInteractorType
    weak var delegate: HomePresenterDelegate?
    
    fileprivate var model : WeatherModelType?
    
    init(interactor: HomeInteractorType){
        self.interactor = interactor
    }
    
    func setHomeViewModel() -> HomeViewModelType{
        guard let model = self.model else {
            fatalError("No HomeViewModel")
        }
        return HomeViewModel(model: model)
    }
    
    func viewWillBecomeActive() {
        
    }
    
    // MARK: Private
    private func updateViewModel(){
        
    }
    
}
