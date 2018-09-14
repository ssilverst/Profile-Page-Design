//
//  DesignFunctions.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/11/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

extension UIImageView {
    public func maskCircle(anyImage: UIImage) {
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
        self.image = anyImage
    }
}

extension UIView {
    public func maskCircle(_ factor: CGFloat) {
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.layer.cornerRadius = self.frame.height / factor
        
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
}

extension UITableView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.withAlphaComponent(0.85).cgColor }
        gradient.locations = locations
        self.layer.addSublayer(gradient)
    }
}

extension UIView {
    self.view as! UITableView!
}
