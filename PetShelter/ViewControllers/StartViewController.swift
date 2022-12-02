//
//  ViewController.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 11/26/22.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var topView: UIView!
    @IBOutlet var makeFriendButton: UIButton!
    @IBOutlet var ourFriendsLabel: UILabel!
    
    private var galleryCollectionView = GalleryCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: ourFriendsLabel.bottomAnchor, constant: 40).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 600).isActive = true
        
        galleryCollectionView.set(cells: Pet.fetchPets())
        
        makeFriendButton.layer.cornerRadius = makeFriendButton.frame.height / 2
        
        guard let startBackgound = UIImage(named: "start-screen-background") else { return }
        scrollView.backgroundColor = UIColor(patternImage: startBackgound)
        topView.backgroundColor = UIColor(patternImage: startBackgound)
        
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
         
        
    }


}

struct Constants {
    static let leftDistanceToView: CGFloat = 15
    static let rightDistanceToView: CGFloat = 15
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = UIScreen.main.bounds.width
    - Constants.leftDistanceToView - Constants.rightDistanceToView
}

