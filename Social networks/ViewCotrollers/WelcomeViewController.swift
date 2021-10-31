//
//  WelcomeViewController.swift
//  Social networks
//
//  Created by timatika on 29.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeVC: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeVC.text = "Добро пожаловать, \(userOne.name) \(userOne.surName)"

    }
    

}
