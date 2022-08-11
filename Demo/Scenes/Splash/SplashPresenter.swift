//
//  SplashPresenter.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

import UIKit

// MARK: - SplashPresenterProtocol
protocol SplashPresenterProtocol: AnyObject {
    func viewDidLoad()
}

// MARK: - SplashPresenter
final class SplashPresenter {
    
    weak var viewController: SplashViewProtocol?
    
    private let sceneBuildManager: Buildable
    private let userService: UserServiceable
    
    init(
        sceneBuildManager: Buildable,
        userService: UserServiceable
    ) {
        self.sceneBuildManager = sceneBuildManager
        self.userService = userService
    }
}

// MARK: - SplashPresenterProtocol
extension SplashPresenter: SplashPresenterProtocol {
    func viewDidLoad() {
        let rootViewController = userService.isUserAuth()
        ? sceneBuildManager.buildMainScreen()
        : sceneBuildManager.buildAuthScreen()
        
        UIApplication.shared.windows.first?.rootViewController = rootViewController
    }
}
