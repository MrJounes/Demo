//
//  GamePresenter.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

// MARK: - GamePresenterProtocol
protocol GamePresenterProtocol: AnyObject {
    
}

// MARK: - GamePresenter
final class GamePresenter {
    
    weak var viewController: GameViewProtocol?
    
    private let sceneBuildManager: Buildable
    
    init(sceneBuildManager: Buildable) {
        self.sceneBuildManager = sceneBuildManager
    }
}

// MARK: - GamePresenterProtocol
extension GamePresenter: GamePresenterProtocol {
    
}
