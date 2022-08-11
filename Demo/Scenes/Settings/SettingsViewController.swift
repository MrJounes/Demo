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
    }
}

// MARK: - SettingsViewProtocol Impl
extension SettingsViewController: SettingsViewProtocol {
    
}
