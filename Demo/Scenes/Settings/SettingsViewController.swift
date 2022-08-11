//
//  SettingsViewController.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

import UIKit

// MARK: - SettingsViewProtocol
protocol SettingsViewProtocol: UIViewController {
    
}

// MARK: - SettingsViewController
final class SettingsViewController: UIViewController {
    var presenter: SettingsPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
}

// MARK: - SettingsViewProtocol Impl
extension SettingsViewController: SettingsViewProtocol {
    
}

// MARK: - Private methods
private extension SettingsViewController {
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
