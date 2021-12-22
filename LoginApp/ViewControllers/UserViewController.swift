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
        view.addGradientLayer(topColor: UIColor.yellow, behindTopColor: UIColor.red, bottomColor: UIColor.yellow, beforeBottomColor: UIColor.yellow)
        
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


// MARK: - Setup background gradient color
extension UIView {
    func addGradientLayer(topColor: UIColor, behindTopColor: UIColor, bottomColor: UIColor, beforeBottomColor: UIColor) {
        let gradientColor = CAGradientLayer()
        gradientColor.frame = bounds
        gradientColor.colors = [topColor.cgColor, behindTopColor.cgColor, bottomColor.cgColor, beforeBottomColor.cgColor]
        gradientColor.locations = [0, 0.2, 0.8, 1]
        layer.insertSublayer(gradientColor, at: 0)
    }
}
