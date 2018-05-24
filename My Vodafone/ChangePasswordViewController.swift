//
//  ChangePasswordViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 24/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

class ChangePasswordViewController: UIViewController {
    
    @IBOutlet weak var lblChangePassword: UILabel!
    @IBOutlet weak var lblEnterNewPassword: UILabel!
    @IBOutlet weak var lblConfirmPassword: UILabel!
    @IBOutlet weak var lblEnterCPass: UILabel!
    
    @IBOutlet weak var txtCurrPassword: UITextField!
    @IBOutlet weak var txtNewPassword: UITextField!
    @IBOutlet weak var txtConfirmPassowrd: UITextField!
    
    @IBOutlet weak var btnLChangePassword: UIButton!
    
    //constants for various fonts used in app
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    let fontRegular = 17
    let fontBold = 25
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnChangePassword(_ sender: Any) {
    }
    
    //function to change fonts
    func change_fonts(){
        lblChangePassword.font = UIFont(name: defaultFontR, size: CGFloat(fontBold))
        lblEnterNewPassword.font = UIFont(name: defaultFontR, size: CGFloat(fontRegular))
        lblConfirmPassword.font = UIFont(name: defaultFontR, size: CGFloat(fontRegular))
        lblEnterCPass.font = UIFont(name: defaultFontR, size: CGFloat(fontRegular))
        //Buttons
        btnLChangePassword.titleLabel?.font = UIFont(name: defaultFontR, size: CGFloat(fontRegular))
        
        
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
