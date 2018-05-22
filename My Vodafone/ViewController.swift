//
//  ViewController.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 21/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var permission_header: UILabel!
    @IBOutlet weak var data_perm_webview: WKWebView!
    @IBOutlet weak var data_perm_btn_cancel: UIButton!
    @IBOutlet weak var data_perm_btn_ok: UIButton!
    
    
    let defaultFontR = "VodafoneRg-Regular"
    let defaultFontB = "VodafoneRg-Bold"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*Changing the font face type of all views
        Regular fonts to be use : VodafoneRg-Regular VodafoneRg-Bold*/
        permission_header.font = UIFont(name: defaultFontB, size: 30)
        data_perm_btn_cancel.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        data_perm_btn_ok.titleLabel?.font = UIFont(name: defaultFontR, size: 17)
        
        
        
        let url = Bundle.main.url(forResource: "data_permissions", withExtension: "html")
        data_perm_webview.load(URLRequest(url: url!))
        
        /*for family: String in UIFont.familyNames {
            print("\(family)")
            for names: String in UIFont.fontNames(forFamilyName: family) {
                print("== \(names)")
            }
        }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

