//
//  AuthViewController.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

import UIKit

// MARK: - AuthViewProtocol
protocol AuthViewProtocol: UIViewController {
    
}

// MARK: - AuthViewController
final class AuthViewController: UIViewController {
    var presenter: AuthPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
}

// MARK: - AuthViewProtocol Impl
extension AuthViewController: AuthViewProtocol {
    
}

// MARK: - Private methods
private extension AuthViewController {
    func setupViewController() {
        view.backgroundColor = .systemBackground
        addSubviews()
        setupConstraints()
    }
    
    func addSubviews() {
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([])
    }
}
