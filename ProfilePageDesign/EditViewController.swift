//
//  EditViewController.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/11/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    @IBOutlet weak var editView : UITableView!
    @IBOutlet weak var addView : UIView!
    @IBOutlet weak var addImg : UIImageView!
    @IBOutlet weak var biographyView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //editView.applyGradient(colours: [UIColor.white , UIColor.purple])
        let gradientView : UIView! = UIView(frame: self.view.frame)
        gradientView.applyGradient(colours: [UIColor.white , UIColor.purple])
        self.editView.addSubview(gradientView)
        addImg.maskCircle(anyImage: addImg.image!)
        addView.maskCircle(2.0)
        biographyView.maskCircle(4.0)

    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
