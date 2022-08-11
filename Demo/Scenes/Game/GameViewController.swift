//
//  GameViewController.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

import UIKit

// MARK: - GameViewProtocol
protocol GameViewProtocol: UIViewController {
    
}

// MARK: - GameViewController
final class GameViewController: UIViewController {
    var presenter: GamePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - GameViewProtocol Impl
extension GameViewController: GameViewProtocol {
    
}
