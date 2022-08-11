//
//  AuthPresenter.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

// MARK: - AuthPresenterProtocol
protocol AuthPresenterProtocol: AnyObject {
    
}

// MARK: - AuthPresenter
final class AuthPresenter {
    
    weak var viewController: AuthViewProtocol?
    
}

// MARK: - AuthPresenterProtocol
extension AuthPresenter: AuthPresenterProtocol {
    
}
