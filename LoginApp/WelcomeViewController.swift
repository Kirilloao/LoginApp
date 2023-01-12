//
//  welcomeViewController.swift
//  LoginApp
//
//  Created by Kirill Taraturin on 10.01.2023.
//

import UIKit



class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTF: UILabel!
    
    var welcome: String!
    
    var emptyPassword: String!
    var emptyUserName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTF.text = welcome
  
    }

}
