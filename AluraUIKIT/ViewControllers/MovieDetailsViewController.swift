//
//  MovieDetailsViewController.swift
//  AluraUIKIT
//
//  Created by Luiz Oliveira on 13/12/23.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    private var movie: Movie
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 32)
        label.textColor = .white
        label.text = movie.title
        return label
    }()
    
    private lazy var posterImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: movie.image)
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 32
        return image
    }()
    
    private lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 22)
        label.textColor = .white
        label.text = "Classificação dos usuários: \(movie.rate)"
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = movie.synopsis
        label.numberOfLines = 8
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemIndigo
        addSubviews()
        configureConstraints()
    }
    
    private func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(posterImage)
        view.addSubview(ratingLabel)
        view.addSubview(descriptionLabel)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 16),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            posterImage.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 4),
            posterImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            posterImage.widthAnchor.constraint(equalToConstant: 200),
            posterImage.heightAnchor.constraint(equalToConstant: 300),
            
            ratingLabel.topAnchor.constraint(equalToSystemSpacingBelow: posterImage.bottomAnchor, multiplier: 4),
            ratingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalToSystemSpacingBelow: ratingLabel.bottomAnchor, multiplier: 4),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.widthAnchor.constraint(equalToConstant: 300),
        ])
    }
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
