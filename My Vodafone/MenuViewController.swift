//
//  MenuViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 24/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var ic_home_image: UIImageView!
    @IBOutlet weak var ic_mobile: UIImageView!
    @IBOutlet weak var ic_ratings: UIImageView!
    @IBOutlet weak var ic_topup: UIImageView!
    @IBOutlet weak var ic_roaming: UIImageView!
    @IBOutlet weak var ic_calls: UIImageView!
    @IBOutlet weak var ic_map_locator: UIImageView!
    @IBOutlet weak var ic_network: UIImageView!
    
//    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.perform(#selector(changeImageColorToWhite), with: nil, afterDelay: 0)
//        drawMenuShadow()
        
        
    }
    
    @objc func changeImageColorToWhite() {
        let templateImageHome = ic_home_image.image?.withRenderingMode(.alwaysTemplate)
        ic_home_image.image = templateImageHome
        ic_home_image.tintColor = UIColor.white
        
        let templateImageMobile = ic_mobile.image?.withRenderingMode(.alwaysTemplate)
        ic_mobile.image = templateImageMobile
        ic_mobile.tintColor = UIColor.white
        
        let templateImageRatings = ic_ratings.image?.withRenderingMode(.alwaysTemplate)
        ic_ratings.image = templateImageRatings
        ic_ratings.tintColor = UIColor.white
        
        let templateImageTopUP = ic_topup.image?.withRenderingMode(.alwaysTemplate)
        ic_topup.image = templateImageTopUP
        ic_topup.tintColor = UIColor.white
        
        let templateImageRoaming = ic_roaming.image?.withRenderingMode(.alwaysTemplate)
        ic_roaming.image = templateImageRoaming
        ic_roaming.tintColor = UIColor.white
        
        let templateImageCalls = ic_calls.image?.withRenderingMode(.alwaysTemplate)
        ic_calls.image = templateImageCalls
        ic_calls.tintColor = UIColor.white
        
        let templateImageMap = ic_map_locator.image?.withRenderingMode(.alwaysTemplate)
        ic_map_locator.image = templateImageMap
        ic_map_locator.tintColor = UIColor.white
        
        let templateImageNetwork = ic_network.image?.withRenderingMode(.alwaysTemplate)
        ic_network.image = templateImageNetwork
        ic_network.tintColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*@IBAction func openMenu(_ sender: Any) {
        if (menuShowing){
            trailingConstraint.constant = 500
        }else{
            trailingConstraint.constant = 0
            
            //animation
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
                })
            
            
        }
        
//        menuShowing = !menuShowing
        
    }*/
    // Dropping shadow for our menu view ie a straight shadow
    /*func drawMenuShadow() {
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
    }*/
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
