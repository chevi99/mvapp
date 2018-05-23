//
//  PasswordResetViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 23/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class PasswordResetViewController: UIViewController {
    
    @IBOutlet weak var lblAccountConfirm: UILabel!
    @IBOutlet weak var lblEnterPin: UILabel!
    @IBOutlet weak var lblEnterNewPassword: UILabel!
    @IBOutlet weak var lblConfirmPassword: UILabel!
    
    @IBOutlet weak var txtPin: UITextField!
    @IBOutlet weak var txtNewPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    @IBOutlet weak var btnLContinue: UIButton!
    @IBOutlet weak var btnLGoBack: UIButton!
    
    //constants for various fonts used in app
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //change fonts
        display_fonts()
        
        //change border bottom
        change_border_bottom(txtEnterpin:txtPin)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Function to change fonts
    func display_fonts() {
        lblAccountConfirm.font = UIFont(name: defaultFontR, size: 30)
        lblEnterPin.font = UIFont(name: defaultFontR, size: 17)
        lblEnterNewPassword.font = UIFont(name: defaultFontR, size: 17)
        lblConfirmPassword.font = UIFont(name: defaultFontR, size: 17)
        //buttons
        btnLContinue.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        btnLGoBack.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
    }
    
    //Function to change border bottom colour for pin text field
    func change_border_bottom(txtEnterpin:UITextField){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.white.cgColor
        border.frame = CGRect(x: 0, y: txtEnterpin.frame.size.height - width, width:  txtEnterpin.frame.size.width, height: txtEnterpin.frame.size.height)
        
        border.borderWidth = width
        txtEnterpin.layer.addSublayer(border)
        txtEnterpin.layer.masksToBounds = true
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
