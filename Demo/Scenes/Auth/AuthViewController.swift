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
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue.withAlphaComponent(0.5)
        return imageView
    }()
    
    private lazy var playButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Играть без регистрации", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(didTapPlayButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var authButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(didTapAuthButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Регистрация", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    @objc
    private func didTapPlayButton() {
        presenter?.didTapPlayButton()
    }
    
    @objc
    private func didTapAuthButton() {
        presenter?.didTapAuthButton()
    }
    
    @objc
    private func didTapRegisterButton() {
        presenter?.didTapRegisterButton()
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
        buttonStackView.addArrangedSubview(playButton)
        buttonStackView.addArrangedSubview(authButton)
        buttonStackView.addArrangedSubview(registerButton)
        
        view.myAddSubviews(
            imageView,
            buttonStackView
        )
    }
    
    func setupConstraints() {
        let buttonHeight: CGFloat = 48
        let buttonStackViewOffset: CGFloat = 16
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            playButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            authButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            registerButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            
            buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonStackViewOffset),
            buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -buttonStackViewOffset),
            buttonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -buttonStackViewOffset)
        ])
    }
}
