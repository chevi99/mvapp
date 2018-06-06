//
//  ProductsServicesViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 30/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class ProductsServicesViewController: UIViewController {
    
    @IBOutlet weak var profile_pic: UIImageView!
    @IBOutlet weak var profile_pic2: UIImageView!
    @IBOutlet weak var lblPdtServiceHeader: UILabel!
    @IBOutlet weak var lblSelectService: UILabel!
    @IBOutlet weak var lblAddService: UILabel!
    @IBOutlet weak var lblAddDesc: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblUserNumber: UILabel!
    
    @IBOutlet weak var addServices: CardView!
    @IBOutlet weak var userPdtDetails: CardView!
    
    
    //constants for various fonts used in app
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    let defaultFontSizeR: CGFloat = 18
    let defaultFontSizeB: CGFloat = 27
    let defaultFontSizeT: CGFloat = 25
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // make profile pic round
        makePicRound(image: profile_pic)
        makePicRound(image: profile_pic2)
        
        //change fonts
        display_fonts()
        
        let gestureRec = UITapGestureRecognizer(target: self, action: #selector(self.goToAddServices))
        addServices.addGestureRecognizer(gestureRec)
        
        let gestureRec2 = UITapGestureRecognizer(target: self, action: #selector(self.goToUserPdtDetails))
        userPdtDetails.addGestureRecognizer(gestureRec2)
        
    }
    
    @objc func goToAddServices(_sender: UITapGestureRecognizer){
//        print("You just clicked")
        let moveTo = storyboard?.instantiateViewController(withIdentifier: "AddServiceViewController")
        self.navigationController?.pushViewController(moveTo!, animated: true)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
//        present(moveTo!, animated: true, completion: nil)
        
    }
    
    //Creating a gesture function to move to user's Products Details
    @objc func goToUserPdtDetails(_sender: UITapGestureRecognizer) {
        let moveTo = storyboard?.instantiateViewController(withIdentifier: "CustomerPdtsDetailsViewController")
        self.navigationController?.pushViewController(moveTo!, animated: true)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    Function to make profile pic round
    */
    func makePicRound(image:UIImageView) {
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.white.cgColor
    }
    
    //Function to change font and size
    func display_fonts() {
        lblPdtServiceHeader.font = UIFont(name: defaultFontR, size: defaultFontSizeB)
        lblSelectService.font = UIFont(name: defaultFontR, size: defaultFontSizeB)
        lblAddService.font = UIFont(name: defaultFontR, size: defaultFontSizeT)
        lblAddDesc.font = UIFont(name: defaultFontR, size: defaultFontSizeR)
        lblUsername.font = UIFont(name: defaultFontR, size: defaultFontSizeT)
        lblUserNumber.font = UIFont(name: defaultFontR, size: defaultFontSizeR)
        
    }

}
