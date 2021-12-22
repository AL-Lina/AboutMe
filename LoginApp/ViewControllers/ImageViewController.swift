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
        image.image = UIImage(named: user.person.image)
        aboutMyselfLabel.text = user.person.someWordsAboutMe
        
    }

}
