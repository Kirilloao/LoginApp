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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeViewController = viewController as? WelcomeViewController {
                welcomeViewController.welcome = "\(myInfo.name) \(myInfo.surname)"
            } else if let navigationVC = viewController as? UINavigationController {
                guard let personInfoVC =
                        navigationVC.topViewController as? PersonInfoViewController else { return }
                personInfoVC.title = "\(myInfo.name) \(myInfo.surname)"
                personInfoVC.view.backgroundColor = .yellow
            }
            }
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
      view.endEditing(true)
    }
    
    @IBAction func logInDidTapped() {
        guard userNameTF.text == myInfo.userName, passwordTF.text == myInfo.userPassword else {
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
        ? showAlert(title: "Hey!", message: "Your user name is \(myInfo.userName)")
        : showAlert(title: "Hey!", message: "Your password is \(myInfo.userPassword)")
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


