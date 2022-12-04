//
//  GalleryCollectionViewCell.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 12/1/22.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Georgia", size: 30)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let learnMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Learn more", for: .normal)
        button.titleLabel?.font = UIFont(name: "Georgia", size: 22)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = #colorLiteral(red: 0.95, green: 0.8, blue: 0.7, alpha: 1)
        button.layer.borderWidth = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // mainImageView constraints
        addSubview(mainImageView)
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: -80).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1).isActive = true
        
        // nameLabel constraints
        addSubview(nameLabel)
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.galleryItemWidth/3.8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 30).isActive = true
        
        // button constraints
        addSubview(learnMoreButton)
        learnMoreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.galleryItemWidth/6).isActive = true
        learnMoreButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.galleryItemWidth/6).isActive = true
        learnMoreButton.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15).isActive = true
        learnMoreButton.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        learnMoreButton.heightAnchor.constraint(equalToConstant: 52.0).isActive = true
        learnMoreButton.layer.cornerRadius = 26
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
