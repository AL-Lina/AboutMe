//
//  ImageViewController.swift
//  LoginApp
//
//  Created by Alina Sokolova on 22.12.21.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var aboutMyselfLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addBackgroundGradientColor(firstColor: UIColor.red, secondColor: UIColor.purple, thirdColor: UIColor.cyan)
        
        image.image = UIImage(named: user.person.image)
        aboutMyselfLabel.text = user.person.someWordsAboutMe
        
    }

}

// MARK: - Setup background gradient color
extension UIView {
    func addBackgroundGradientColor(firstColor: UIColor, secondColor: UIColor, thirdColor: UIColor) {
        let gradientColor = CAGradientLayer()
        gradientColor.frame = bounds
        gradientColor.type = .axial
        gradientColor.colors = [firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
        gradientColor.locations = [0, 0.25, 1]
        layer.insertSublayer(gradientColor, at: 0)
    }
}
