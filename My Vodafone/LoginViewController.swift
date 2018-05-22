//
//  LoginViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 22/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var lblLoginHeader: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnForgotten: UIButton!
    @IBOutlet weak var lblNotReg: UILabel!
    @IBOutlet weak var btnRegister: UIButton!
    
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // change font type and size
        lblLoginHeader.font = UIFont(name: defaultFontR, size: 30)
        lblLoginHeader.text = "Log in to \n My Vodafone"
        lblUsername.font = UIFont(name: defaultFontR, size: 17)
        lblPassword.font = UIFont(name: defaultFontR, size: 17)
        lblNotReg.font = UIFont(name: defaultFontR, size: 22)
        
        //buttons
        btnLogin.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        btnForgotten.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        btnRegister.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
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
