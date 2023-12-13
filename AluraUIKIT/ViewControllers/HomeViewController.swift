//
//  ViewController.swift
//  AluraUIKIT
//
//  Created by Luiz Oliveira on 11/12/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var logoLabel: UILabel = {
        let label = UILabel()
        label.text = "Cinetopia"
        label.textColor = .systemYellow
        label.font = .systemFont(ofSize: 64, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = .imageBg
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var welcomeButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quero começar!", for: .normal)
        button.backgroundColor = .systemYellow
        button.setTitleColor(.systemIndigo, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [logoLabel, logoImageView, welcomeLabel, welcomeButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 32
        stackView.alignment = .center
        return stackView
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        
        addSubviews()
        setupConstraints()
    }
    
    @objc func buttonPressed() {
        navigationController?.pushViewController(MoviesViewController(), animated: true)
    }
    
   private func addSubviews() {
        view.addSubview(stackView)
    }
     
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),
            
            welcomeButton.heightAnchor.constraint(equalToConstant: 64),
            welcomeButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 64),
            welcomeButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -64),
//            logoLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 4),
//            logoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            
//            logoImageView.topAnchor.constraint(equalToSystemSpacingBelow: logoLabel.bottomAnchor, multiplier: 1),
//            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            logoImageView.widthAnchor.constraint(equalToConstant: 400),
//            logoImageView.heightAnchor.constraint(equalToConstant: 400),
//            
//            welcomeLabel.topAnchor.constraint(equalToSystemSpacingBelow: logoImageView.bottomAnchor, multiplier: 2),
            welcomeLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 16),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 64),
            welcomeLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -16),
            
//            welcomeButton.topAnchor.constraint(equalToSystemSpacingBelow: welcomeLabel.bottomAnchor, multiplier: 4),
//            welcomeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
//            welcomeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
//            welcomeButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }


}

