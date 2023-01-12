//
//  ViewController.swift
//  LoginApp
//
//  Created by Kirill Taraturin on 10.01.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var userNameTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.isSecureTextEntry = true
        passwordTF.autocorrectionType = UITextAutocorrectionType.no
        userNameTF.autocorrectionType = UITextAutocorrectionType.no
    }
   
    @IBAction func logInDidTapped() {
        if passwordTF.text == "Password" && userNameTF.text == "User" {
        } else {
            let alert = UIAlertController(title: "Your login or password", message: "is incorrect", preferredStyle: .alert)
            present(alert, animated: true)
            
            let tryAgainAction = UIAlertAction(title: "Try again", style: .default)
            alert.addAction(tryAgainAction)
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        userNameTF.text = welcomeVC.emptyUserName
        passwordTF.text = welcomeVC.emptyPassword
    }
    // MARK: Alerts
    
    @IBAction func forgotPasswordDidTapped() {
        let alert = UIAlertController(title: "Your password is:", message: "Password", preferredStyle: .alert)
        present(alert, animated: true)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
    }
    
    @IBAction func forgotUserNameDidTapped() {
        let alert = UIAlertController(title: "Your user name is:", message: "User", preferredStyle: .alert)
        present(alert, animated: true)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = "Welcome, \(userNameTF.text ?? "")!"
    }
}


