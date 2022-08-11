//
//  AuthPresenter.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

// MARK: - AuthPresenterProtocol
protocol AuthPresenterProtocol: AnyObject {
    func didTapPlayButton()
    func didTapAuthButton()
    func didTapRegisterButton()
}

// MARK: - AuthPresenter
final class AuthPresenter {
    
    weak var viewController: AuthViewProtocol?
    
    private let sceneBuildManager: Buildable
    
    init(sceneBuildManager: Buildable) {
        self.sceneBuildManager = sceneBuildManager
    }
}

// MARK: - AuthPresenterProtocol
extension AuthPresenter: AuthPresenterProtocol {
    func didTapPlayButton() {
        print(#function)
    }
    
    func didTapAuthButton() {
        print(#function)
    }
    
    func didTapRegisterButton() {
        print(#function)
    }
}
