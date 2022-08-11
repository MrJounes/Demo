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
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bell")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        presenter?.viewDidLoad()
    }
}

// MARK: - SplashViewProtocol Impl
extension SplashViewController: SplashViewProtocol {
    
}

// MARK: - Private methods
private extension SplashViewController {
    func setupViewController() {
        view.backgroundColor = .systemBackground
        addSubviews()
        setupConstraints()
    }
    
    func addSubviews() {
        view.myAddSubview(imageView)
    }
    
    func setupConstraints() {
        let imageViewSize: CGFloat = 200
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: imageViewSize),
            imageView.widthAnchor.constraint(equalToConstant: imageViewSize)
        ])
    }
}
