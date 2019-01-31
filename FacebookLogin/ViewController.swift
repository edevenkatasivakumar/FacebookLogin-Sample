//
//  ViewController.swift
//  FacebookLogin
//
//  Created by TechMahindra on 31/01/19.
//  Copyright © 2019 Sivakumar. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        btnFBLoginClicked()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func btnFBLoginClicked() {
        let loginManager : FBSDKLoginManager = FBSDKLoginManager()
        loginManager.logIn(withReadPermissions: ["public_profile","email"], from: self) { (result, error) in
            if error == nil {
                let strToken : String = (result?.token.tokenString)!
                print("Easy Solutions Web's FB Token = \(strToken)")
                DispatchQueue.main.async {
                   // self.btnFbLogin.titleLabel?.text = "Logout User"
                }
            }
        }
    }

}

