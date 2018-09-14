//
//  YourFriendsTableViewController.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/12/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class YourFriendsTableViewController: UITableViewController {
    var friends = [Friend]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientView : UIView! = UIView(frame: self.view.frame)
        gradientView.applyGradient(colours: [UIColor.white , UIColor.purple])
        self.tableView.backgroundView = gradientView
        loadFriends()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if friends.count == 0 {
            self.tableView.setEmptyMessage("My Message")
        } else {
            self.tableView.restore()
        }
        
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cellIdentifier = "FriendsTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Friends", for: indexPath) as? FriendsTableViewCell else {
            fatalError("The dequeued cell is not an instance of FriendsTableViewCell.")
        }
        let friend = friends[indexPath.row]
        
        cell.nameLabel.text = friend.name
        cell.profilePic.image = friend.photo
        cell.setBackgroundColor(indexPath.row, friends.count)
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let selectedRow = indexPath.row
            if segue.destination is PopupViewController
            {
                let vc = segue.destination as? PopupViewController
                vc?.nameText = friends[selectedRow].name
                vc?.bio = friends[selectedRow].bio
                vc?.profileImage = friends[selectedRow].photo
            }
        }
    }
       
    
    private func loadFriends(){
        let photo1 = UIImage(named: "steve")
        let photo2 = UIImage(named: "sylvia")
        let photo3 = UIImage(named: "seth")
        let photo4 = UIImage(named: "stacy")
        let namesArray:[String] = ["steve", "sylvia", "seth", "stacy"]
        guard let friend1 = Friend(name: namesArray[0], bio: "", photo: photo1)
        else {
            fatalError("Unable to instantiate friend1")
        }
        guard let friend2 = Friend(name: namesArray[1], bio: "", photo: photo2)
        else {
            fatalError("Unable to instantiate friend2")
        }
        guard let friend3 = Friend(name: namesArray[2], bio: "", photo: photo3)
        else {
            fatalError("Unable to instantiate friend3")
        }
        guard let friend4 = Friend(name: namesArray[3], bio: "", photo: photo4)
        else {
            fatalError("Unable to instantiate friend4")
        }
        friends += [friend1, friend2, friend3, friend4]
    }


}
extension UITableView {
    
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .black
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: "MarkerFelt", size: 15)
        messageLabel.sizeToFit()
        
        self.backgroundView = messageLabel;
        self.separatorStyle = .none;
    }
    
    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}

//this will change the colors of the friend cells to create a gradient effect
extension UITableViewCell {
    
    func setBackgroundColor (_ index: Int, _ numFriends: Int){
        let redColorMultiplier : CGFloat = CGFloat(100 / numFriends)
        
        let greenColorMultiplier : CGFloat = CGFloat(255 / numFriends)
        
        let redVal : CGFloat = 155.0 + (redColorMultiplier * CGFloat(index))
        
        let greenVal : CGFloat = greenColorMultiplier * CGFloat(index)
  
        self.backgroundColor = UIColor(red: redVal/255.0, green: greenVal/255.0, blue: 255, alpha: 1.0)
    }
    
}

