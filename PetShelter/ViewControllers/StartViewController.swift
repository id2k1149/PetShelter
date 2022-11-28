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
        
    }


}

