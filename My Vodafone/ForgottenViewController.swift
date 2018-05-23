//
//  ForgottenViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 23/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class ForgottenViewController: UIViewController {
    
    //initializing views
    @IBOutlet weak var lblPasswordResetHeader: UILabel!
    @IBOutlet weak var lblEnterUsername: UILabel!
    @IBOutlet weak var btnLContinue: UIButton!
    @IBOutlet weak var lblLGoBack: UIButton!
    
    //constants for various fonts used in app
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // change fonts.
        display_fonts()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func display_fonts(){
        lblPasswordResetHeader.font = UIFont(name: defaultFontR, size: 30)
        lblEnterUsername.font = UIFont(name: defaultFontR, size: 17)
        btnLContinue.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        lblLGoBack.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        
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
