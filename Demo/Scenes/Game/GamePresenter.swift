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
    
}

// MARK: - GamePresenterProtocol
extension GamePresenter: GamePresenterProtocol {
    
}
