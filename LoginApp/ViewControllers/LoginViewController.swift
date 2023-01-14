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
    
    private var user = "User"
    private var password = "Password"

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.isSecureTextEntry = true
        passwordTF.autocorrectionType = UITextAutocorrectionType.no
        userNameTF.autocorrectionType = UITextAutocorrectionType.no
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeViewController = viewController as? WelcomeViewController {
                welcomeViewController.welcome = "Kirill Taraturin"
            } else if let navigationVC = viewController as? UINavigationController {
                guard let personInfoVC =
                        navigationVC.topViewController as? PersonInfoViewController else { return }
                personInfoVC.title = "Kirill Taraturin"
                personInfoVC.view.backgroundColor = .yellow
            }
               
            }
        }

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.welcome = userNameTF.text
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
      view.endEditing(true)
    }
    
    @IBAction func logInDidTapped() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textFiled: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Hey!", message: "Your user name is \(user)")
        : showAlert(title: "Hey!", message: "Your password is \(password)")
    }
    
    private func showAlert(title: String, message: String, textFiled: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textFiled?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


