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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            
//            NSAttributedString.Key.foregroundColor: UIColor.systemYellow
        ]

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
         
        
    }


}

