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
    }
}

// MARK: - AuthViewProtocol Impl
extension AuthViewController: AuthViewProtocol {
    
}
