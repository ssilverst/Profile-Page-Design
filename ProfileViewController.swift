//
//  ProfileViewController.swift
//  ProfilePageDesign
//
//  Created by Sam Silverstein on 9/7/18.
//  Copyright © 2018 Sam Silverstein. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UIScrollViewDelegate
{
    
    
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var biographyView: UIView!
    private let headerHeight: CGFloat = 100.0
    private let headerCutaway: CGFloat = 20.0
    
    var headerView: UIView!
    
    var headerMaskLayer: CAShapeLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.applyGradient(colours: [UIColor.white , UIColor.purple])
        let gradientView : UIView! = UIView(frame: self.view.frame)
        gradientView.applyGradient(colours: [UIColor.white , UIColor.purple])
        self.tableView.addSubview(gradientView)
        profileImg.maskCircle(anyImage: profileImg.image!)
        profileView.maskCircle(2.0)
        biographyView.maskCircle(4.0)
        
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        
        tableView.addSubview(headerView)
        
        tableView.contentInset = UIEdgeInsets(top: headerHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -headerHeight)
        
        
        headerMaskLayer = CAShapeLayer()
        headerMaskLayer.fillColor = UIColor.black.cgColor
        
        headerView.layer.mask = headerMaskLayer
        
        updateHeaderView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0 // your number of cell here
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // your cell coding
        return UITableViewCell()
    }
    @IBAction func buttonBounce(_ sender: Any) {
        let bouncyButton = sender as! UIButton
        let bounds = bouncyButton.bounds
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping:  0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: {
            bouncyButton.bounds = CGRect(x: bounds.origin.x - 20 , y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
        }) { (success: Bool) in
            if success
            {
                bouncyButton.bounds = bounds
            }
        }
    }
    func updateHeaderView() {
        var headerRect = CGRect(x: 0, y: -headerHeight, width: tableView.bounds.width, height: headerHeight)
        if tableView.contentOffset.y < -headerHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
            
        }
        
        headerView.frame = headerRect
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: headerRect.width, y: 0))
        path.addLine(to: CGPoint(x: headerRect.width, y: headerRect.height))
        path.addLine(to: CGPoint(x: 0, y: headerRect.height-headerCutaway))
        headerMaskLayer?.path = path.cgPath

    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }
}

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

/*extension UITableView {
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
}*/
extension UIView {
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
