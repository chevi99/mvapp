//
//  MenuViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 24/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    //connecting ui image views
    @IBOutlet weak var ic_home_image: UIImageView!
    @IBOutlet weak var ic_mobile: UIImageView!
    @IBOutlet weak var ic_ratings: UIImageView!
    @IBOutlet weak var ic_topup: UIImageView!
    @IBOutlet weak var ic_roaming: UIImageView!
    @IBOutlet weak var ic_calls: UIImageView!
    @IBOutlet weak var ic_map_locator: UIImageView!
    @IBOutlet weak var ic_network: UIImageView!
    @IBOutlet weak var ic_mail: UIImageView!
    @IBOutlet weak var ic_profile: UIImageView!
    @IBOutlet weak var ic_settings: UIImageView!
    @IBOutlet weak var ic_info: UIImageView!
    @IBOutlet weak var ic_logout: UIImageView!
    @IBOutlet weak var opacityView: UIView!
    @IBOutlet weak var hamburger: UIBarButtonItem!
    
    //connecting ui buttons
    @IBOutlet weak var dropDownImage: UIButton!
    //connecting an array of networking buttons
    @IBOutlet var networkActivities: [UIButton]!
    @IBOutlet weak var btnLHome: UIButton!
    @IBOutlet weak var btnLPdtServices: UIButton!
    @IBOutlet weak var btnLOffers: UIButton!
    @IBOutlet weak var btnLTopUp: UIButton!
    @IBOutlet weak var btnLTravellingAbroad: UIButton!
    @IBOutlet weak var btnLSupport: UIButton!
    @IBOutlet weak var btnLStoreLocator: UIButton!
    @IBOutlet weak var btnLNetwork: UIButton!
    @IBOutlet weak var btnLMyMessages: UIButton!
    @IBOutlet weak var btnLProfile: UIButton!
    @IBOutlet weak var btnLSettings: UIButton!
    @IBOutlet weak var btnLAbout: UIButton!
    @IBOutlet weak var btnLLogout: UIButton!
    @IBOutlet weak var lblVersion: UILabel!
    
    //connecting uiimage views to enable constraints to be changed
    @IBOutlet weak var ic_mail_top_constraint: NSLayoutConstraint!
    @IBOutlet weak var btnMyMessagesTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var ic_profile_top_constraint: NSLayoutConstraint!
    @IBOutlet weak var btnProfileTopConstraint: UIButton!
    @IBOutlet weak var ic_settings_top_constraint: NSLayoutConstraint!
    @IBOutlet weak var btnSettingsTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var ic_info_top_constraint: NSLayoutConstraint!
    @IBOutlet weak var btnAboutTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var ic_logout_top_constraint: NSLayoutConstraint!
    @IBOutlet weak var btnLogoutTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var lblVersionTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var opacityViewBottomConstraint: NSLayoutConstraint!
    
    
    var menuShowing = false
    var chevronClicked = false
    
    //get close image
    var close_image = UIImage(named: "new_close")
    //get hamburger image
    var hamburger_image = UIImage(named: "hamburger")
    
    @IBOutlet weak var menuViewLeadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //code to change image colours
        self.perform(#selector(changeImageColorToWhite), with: nil, afterDelay: 0)
//        drawMenuShadow()
        
        //change the back button
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "leftArrow")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "leftArrow")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        
        
    }
    /*Function to change image colours to white*/
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
        
        let templateImageMessage = ic_mail.image?.withRenderingMode(.alwaysTemplate)
        ic_mail.image = templateImageMessage
        ic_mail.tintColor = UIColor.white
        
        let templateImageProfile = ic_profile.image?.withRenderingMode(.alwaysTemplate)
        ic_profile.image = templateImageProfile
        ic_profile.tintColor = UIColor.white
        
        let templateImageSettings = ic_settings.image?.withRenderingMode(.alwaysTemplate)
        ic_settings.image = templateImageSettings
        ic_settings.tintColor = UIColor.white
        
        let templateImageAbout = ic_info.image?.withRenderingMode(.alwaysTemplate)
        ic_info.image = templateImageAbout
        ic_info.tintColor = UIColor.white
        
        let templateImageLogout = ic_logout.image?.withRenderingMode(.alwaysTemplate)
        ic_logout.image = templateImageLogout
        ic_logout.tintColor = UIColor.white
        
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
    
    //Enum for Network Activites
    enum selActivity: String {
        case speedChecker = "Speed checker"
        case networkUsage = "Network usage"
        case broadbandFinder = "Broadband Finder"
        case networkCoverage = "Network Coverage"
    }
    
    //handle activity of a selected network activity
    @IBAction func networkTapped(_ sender: UIButton) {
        //get the title of the selected button
        guard let title = sender.currentTitle, let activity = selActivity(rawValue: title) else {
            return
        }
        
        switch activity {
        case .speedChecker:
            print("Move to speed checker")
        default:
            print("Remain")
        }
    }
    
    
    //handle network button click
    @IBAction func handleSelection(_ sender: UIButton) {
        networkActivities.forEach { (button) in
            //Remove animation for simplicity
            button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
            /*UIView.animate(withDuration: 0, animations: {
             
            })*/
            
        }
        
        if chevronClicked != false {
            
            dropDownImage.setImage(UIImage(named: "ic_chevron_down"), for: .normal)
            dropDownImage.tintColor = UIColor.white
            chevronClicked = false
            
            //code to set top constraint
            ic_mail_top_constraint.constant = 10
            btnMyMessagesTopConstraint.constant = 10
            opacityViewBottomConstraint.constant = 250
            ic_mail.layoutIfNeeded()
            btnLMyMessages.layoutIfNeeded()
            opacityView.layoutIfNeeded()
            
        }else{
            
            /*get image name from assets
             set it to tint image then set the colour of the image on the button*/
            let chevron_up = UIImage(named: "chevron_up")
            let tintedImage = chevron_up?.withRenderingMode(.alwaysTemplate)
            dropDownImage.setImage(tintedImage, for: .normal)
            dropDownImage.tintColor = UIColor.white
            chevronClicked = true
            
            //code to set top constraint
            ic_mail_top_constraint.constant = 120
            btnMyMessagesTopConstraint.constant = 120
            opacityViewBottomConstraint.constant = 130
            ic_mail.layoutIfNeeded()
            btnLMyMessages.layoutIfNeeded()
            opacityView.layoutIfNeeded()
        }
    }
    @IBAction func showMenu(_ sender: Any) {
        if(menuShowing){
            menuViewLeadingConstraint.constant = 480
            hamburger.image = hamburger_image
        }else{
            menuViewLeadingConstraint.constant = 100
            //code to change image of hamburger
            hamburger.image = close_image
        }
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
        menuShowing = !menuShowing
    }
    
    
    //Function to hide back buttton
    func hideBackButton(){
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        menuViewLeadingConstraint.constant = 480
        
        menuShowing = false
    }
    
    
}
