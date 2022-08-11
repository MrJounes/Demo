//
//  SettingsPresenter.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

// MARK: - SettingsPresenterProtocol
protocol SettingsPresenterProtocol: AnyObject {
    
}

// MARK: - SettingsPresenter
final class SettingsPresenter {
    
    weak var viewController: SettingsViewProtocol?
    
    private let sceneBuildManager: Buildable
    
    init(sceneBuildManager: Buildable) {
        self.sceneBuildManager = sceneBuildManager
    }
}

// MARK: - SettingsPresenterProtocol
extension SettingsPresenter: SettingsPresenterProtocol {
    
}
