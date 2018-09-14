//
//  DesignProtocols.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/11/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

protocol Design
{
    var anyView : UITableView! {get}
    
    func applyGradient(colours: [UIColor]) -> Void
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void
    func maskCircle(anyImage: UIImage)
    func maskCircle(_ factor: CGFloat)
}

