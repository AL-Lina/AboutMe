//
//  UserViewController.swift
//  LoginApp
//
//  Created by Alina Sokolova on 22.12.21.
//

import UIKit

class UserViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var citizenshipLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        dateOfBirthLabel.text = user.person.dateOfBirth
        ageLabel.text = user.person.age
        citizenshipLabel.text = user.person.citizenship
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
}
