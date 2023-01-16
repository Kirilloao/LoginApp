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
    
    
    @IBOutlet var userNameLabelTInfo: UILabel!
    @IBOutlet var userSurnameLabelInfo: UILabel!
    @IBOutlet var userPhoneLabelInfo: UILabel!
    @IBOutlet var userEmailLabelInfo: UILabel!
    @IBOutlet var userHobbyLabelInfo: UILabel!
    @IBOutlet var userWorkLabelInfo: UILabel!
    @IBOutlet var userGradeLabelInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Name: "
        userSurnameLabel.text = "Surname: "
        userPhoneLabel.text = "Phone: "
        userEmailLabel.text = "Email: "
        userHobbyLabel.text = "Hobby: "
        userWorkLabel.text = "Work: "
        userGradeLabel.text = "Grade: "
        
        userNameLabelTInfo.text = myInfo.name
        userSurnameLabelInfo.text = myInfo.surname
        userPhoneLabelInfo.text = myInfo.userPhone
        userEmailLabelInfo.text = myInfo.userEmali
        userHobbyLabelInfo.text = myInfo.userHobby
        userWorkLabelInfo.text = myInfo.userWork
        userGradeLabelInfo.text = myInfo.userGrade
    }
}
