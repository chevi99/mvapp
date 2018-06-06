//
//  CustomerPdtsDetailsViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 04/06/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class CustomerPdtsDetailsViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // make image round
        
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

}
