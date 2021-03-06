//
//  PasswordRecoveryViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 22/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class PasswordRecoveryViewController: UIViewController {
    
    @IBOutlet weak var lblAccountConfirm: UILabel!
    @IBOutlet weak var lblEnterPin: UILabel!
    @IBOutlet weak var btnLContinue: UIButton!
    @IBOutlet weak var btnLGoBack: UIButton!
    
    //constants for various fonts used in app
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //change fonts
        change_fonts()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Function to set custom font for views
    func change_fonts() {
        lblAccountConfirm.font = UIFont(name: defaultFontR, size: 25)
        lblEnterPin.font = UIFont(name: defaultFontR, size: 17)
        btnLContinue.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        btnLGoBack.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
    }

}
