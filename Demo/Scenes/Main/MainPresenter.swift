//
//  MainPresenter.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

// MARK: - MainPresenterProtocol
protocol MainPresenterProtocol: AnyObject {
    
}

// MARK: - MainPresenter
final class MainPresenter {
    
    weak var viewController: MainViewProtocol?
    
}

// MARK: - MainPresenterProtocol
extension MainPresenter: MainPresenterProtocol {
    
}
