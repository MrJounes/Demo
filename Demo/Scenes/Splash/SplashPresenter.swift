//
//  SplashPresenter.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

// MARK: - SplashPresenterProtocol
protocol SplashPresenterProtocol: AnyObject {
    
}

// MARK: - SplashPresenter
final class SplashPresenter {
    
    weak var viewController: SplashViewProtocol?
    
}

// MARK: - SplashPresenterProtocol
extension SplashPresenter: SplashPresenterProtocol {
    
}
