//
//  MainViewController.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

import UIKit

// MARK: - MainViewProtocol
protocol MainViewProtocol: UIViewController {
    
}

// MARK: - MainViewController
final class MainViewController: UIViewController {
    var presenter: MainPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - MainViewProtocol Impl
extension MainViewController: MainViewProtocol {
    
}
