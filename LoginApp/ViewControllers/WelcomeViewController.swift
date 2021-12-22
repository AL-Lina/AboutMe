//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alina Sokolova on 22.12.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var WelcomeLabel: UILabel!
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        WelcomeLabel.text = "Welcome, \(user.person.fullName)!"
       
    }
    

}
