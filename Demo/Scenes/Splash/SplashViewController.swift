//
//  SplashViewController.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

import UIKit

// MARK: - SplashViewProtocol
protocol SplashViewProtocol: UIViewController {
    
}

// MARK: - SplashViewController
final class SplashViewController: UIViewController {
    var presenter: SplashPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - SplashViewProtocol Impl
extension SplashViewController: SplashViewProtocol {
    
}
