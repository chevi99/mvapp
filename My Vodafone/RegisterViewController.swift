//
//  RegisterViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 22/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    //connecting various views
    @IBOutlet weak var lblRegisterHeader: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblTelephone: UILabel!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var lblAlready: UILabel!
    @IBOutlet weak var btnLRegister: UIButton!
    @IBOutlet weak var btnLForgotten: UIButton!
    @IBOutlet weak var btnLLogin: UIButton!
    
    //constants for various fonts used in app
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting default font type and size.
        lblRegisterHeader.font = UIFont(name: defaultFontR, size: 30)
        lblRegisterHeader.text = "Register for \n My Vodafone"
        lblUsername.font = UIFont(name: defaultFontR, size: 17)
        lblPassword.font = UIFont(name: defaultFontR, size: 17)
        lblTelephone.font = UIFont(name: defaultFontR, size: 17)
        lblAlready.font = UIFont(name: defaultFontR, size: 30)
        lblAlready.text = "Already have a \n My Vodafone \n account?"
        
        //buttons
        btnLLogin.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        btnLRegister.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        btnLForgotten.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        
        
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
