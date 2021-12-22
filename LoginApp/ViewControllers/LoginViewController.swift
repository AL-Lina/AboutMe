//
//  ViewController.swift
//  LoginApp
//
//  Created by Alina Sokolova on 21.12.21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginValueTF: UITextField!
    @IBOutlet weak var passwordValueTF: UITextField!
    
    private let user = User.getInformationAboutUser()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserViewController
                userInfoVC.user = user
            }
        }
    }
    
    @IBAction func logInTapped() {
        if loginValueTF.text != user.login || passwordValueTF.text != user.password {
            showAlert(title: "Wrong login or password",
                      message: "Please try again",
                      textField: passwordValueTF)
        }
    }
    
    @IBAction func forgotUserNameTapped() {
        showAlert(title: "Oops!🙄",
                  message: "Your name is \(user.login)")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(title: "Oops! 🙄",
                  message: "Your password is \(user.password)")
    }
    
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        loginValueTF.text = ""
        passwordValueTF.text = ""
    }
    }
    
    
    


// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
