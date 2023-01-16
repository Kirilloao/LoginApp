//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Kirill Taraturin on 14.01.2023.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userPhoneLabel: UILabel!
    @IBOutlet var userEmailLabel: UILabel!
    @IBOutlet var userHobbyLabel: UILabel!
    @IBOutlet var userWorkLabel: UILabel!
    @IBOutlet var userGradeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Name: \(myInfo.name)"
        userSurnameLabel.text = "Surname: \(myInfo.surname)"
        userPhoneLabel.text = "Phone: \(myInfo.userPhone)"
        userEmailLabel.text = "Email: \(myInfo.userEmali)"
        userHobbyLabel.text = "Hobby: \(myInfo.userHobby)"
        userWorkLabel.text = "Work: \(myInfo.userWork)"
        userGradeLabel.text = "Grade: \(myInfo.userGrade)"
    }
}
