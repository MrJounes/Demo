//
//  SceneBuildManager.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

protocol Buildable {
    func buildSplashScreen() -> SplashViewController
    func buildAuthScreen() -> AuthViewController
    func buildMainScreen() -> MainViewController
    func buildSettingsScreen() -> SettingsViewController
    func buildGameScreen() -> GameViewController
}

final class SceneBuildManager {
    
    private let userService: UserServiceable
    private let defaultsManager: DefaultsManagerable
    
    init() {
        defaultsManager = DefaultsManager()
        userService = UserService(defaultsManager: defaultsManager)
    }
}

extension SceneBuildManager: Buildable {
    func buildSplashScreen() -> SplashViewController {
        let viewController = SplashViewController()
        let presenter = SplashPresenter(
            sceneBuildManager: self,
            userService: userService
        )
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
    func buildAuthScreen() -> AuthViewController {
        let viewController = AuthViewController()
        let presenter = AuthPresenter(sceneBuildManager: self)
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
    func buildMainScreen() -> MainViewController {
        let viewController = MainViewController()
        let presenter = MainPresenter(sceneBuildManager: self)
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
    func buildSettingsScreen() -> SettingsViewController {
        let viewController = SettingsViewController()
        let presenter = SettingsPresenter(sceneBuildManager: self)
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
    func buildGameScreen() -> GameViewController {
        let viewController = GameViewController()
        let presenter = GamePresenter(sceneBuildManager: self)
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
    }
}
