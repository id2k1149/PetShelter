//
//  ViewController.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 11/26/22.
//

import UIKit

class StartViewController: UIViewController {

    // MARK: - @IBOutlet
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var startScreenView: UIView!
    @IBOutlet var makeFriendButton: UIButton!
    @IBOutlet var ourFriendsLabel: UILabel!
    @IBOutlet var footerView: UIView!
    
    // MARK: - private var
    private var galleryCollectionView = GalleryCollectionView()
    
    // MARK: - override func
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - @IBAction
    @IBAction func bostonButtonTapped() {
        guard let url = URL(string: "https://www.google.com/maps/place/1+Central+St,+Boston") else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
       
    }
}

// MARK: - Private Methods
extension StartViewController {
    
    private func updateUI() {
        // set startBackgound
        guard let startBackgound = UIImage(named: "start-screen-background") else { return }
        scrollView.backgroundColor = UIColor(patternImage: startBackgound)
        startScreenView.backgroundColor = UIColor(patternImage: startBackgound)
        footerView.backgroundColor = UIColor(patternImage: startBackgound)
        
        // This will change the navigation bar background color
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(patternImage: startBackgound)
        appearance.titlePositionAdjustment.horizontal = CGFloat(-250)
        appearance.titlePositionAdjustment.vertical = CGFloat(8)
       
        appearance.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.init(name: "Georgia", size: 30) as Any,
            NSAttributedString.Key.foregroundColor: UIColor(red: 241/255,
                                                       green: 205/255,
                                                       blue: 179/255,
                                                       alpha: 1)
            
        ]

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        makeFriendButton.layer.cornerRadius = makeFriendButton.frame.height / 2
        
        //galleryCollectionView
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: ourFriendsLabel.bottomAnchor, constant: 40).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 550).isActive = true
        
        galleryCollectionView.set(cells: Pet.fetchPets())
        
    }
}
