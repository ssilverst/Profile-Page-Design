//
//  Friend.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/13/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class Friend{
    var name : String
    var bio : String
    var photo : UIImage?
    
    
    init?(name: String, bio: String, photo: UIImage?){
        self.name = name
        self.bio = bio
        self.photo = photo
        
        if name.isEmpty{
            return nil
        }
        if bio.isEmpty{
            self.bio = "Share your goals and interests with the community! Why did you join? How do you plan on reaching your goals?"
        }
    }
}

