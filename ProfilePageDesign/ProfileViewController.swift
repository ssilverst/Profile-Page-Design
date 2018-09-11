//
//  ProfileViewController.swift
//  YeahIDK
//
//  Created by Sam Silverstein on 9/6/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit
class NameCell: UITableViewCell{
    @IBOutlet weak var nameLabel : UILabel!
}
class BasicsCell: UITableViewCell{
    @IBOutlet weak var ageLabel : UILabel!
    @IBOutlet weak var genderLabel : UILabel!
}
class LocationCell: UITableViewCell{
    @IBOutlet weak var locationLabel : UILabel!
}
class BioCell: UITableViewCell{
    @IBOutlet weak var bioLabel : UILabel!
}
class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Name")
            return cell
        }
        else if indexPath.row == 1 {
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Basics")
            //set the data here
            return cell
        }
        else if indexPath.row == 2{
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Location")
            return cell
        }
        else {
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Bio")
            //set the data here
            return cell
        }
    }
    

    @IBOutlet weak var informationTable: UITableView!
    override func viewDidLoad() {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
