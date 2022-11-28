//
//  ViewController.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 11/26/22.
//

import UIKit

class StartViewController: UIViewController {


    @IBOutlet var stackOne: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let startBackgound = UIImage(named: "start-screen-background") else { return }
        stackOne.backgroundColor = UIColor(patternImage: startBackgound)
        
        // This will change the navigation bar background color
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(patternImage: startBackgound)

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}

