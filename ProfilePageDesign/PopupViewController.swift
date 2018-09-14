//
//  PopupViewController.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/14/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {
    @IBOutlet weak var popupView : UIView!
    @IBOutlet weak var bioView : UIView!
    @IBOutlet weak var profilePic : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bioLabel : UILabel!
    @IBOutlet weak var doneButton : UIButton!
    
    var profileImage : UIImage!
    var nameText : String = "NAME"
    var bio : String = "Share your goals and interests with the community! Why did you join? How do you plan on reaching your goals?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.maskCircle(4.0)
        bioView.maskCircle(4.0)
        profilePic.maskCircle(anyImage: profilePic.image!)

        profilePic.image = profileImage
        nameLabel.text = nameText
        bioLabel.text = bio
        
        // Do any additional setup after loading the view.
    }
    @IBAction func doneButtonClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
