//
//  ViewController.swift
//  rondo
//
//  Created by Yetkin Timocin on 17/03/16.
//  Copyright © 2016 BaseTech. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class WelcomeViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    /*
    let loginButton: FBSDKLoginButton = {
        let button = FBSDKLoginButton()
        button.readPermissions = ["email"]
        return button
    }()
    */
    
    @IBOutlet weak var FBLoginButton: FBSDKLoginButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if (FBSDKAccessToken.currentAccessToken() != nil) {
            fetchProfile()
        }
        else {
            // login
            self.FBLoginButton.delegate = self
            FBLoginButton.readPermissions = ["public_profile", "email", "user_friends"]
        }
        
    }
    
    func fetchProfile() {
        
        // login here
        
        print("fetch profile")
        
        let parameters = ["fields": "email, first_name, last_name, picture.type(large)"]
        FBSDKGraphRequest(graphPath: "me", parameters: parameters).startWithCompletionHandler { (connection, result, error) -> Void in
            
            if error != nil {
                print(error)
                return
            }
            
            if let email = result["email"] as? String {
                print(email)
            }
            
            if let firstName = result["first_name"] as? String {
                print(firstName)
            }
            
            if let lastName = result["last_name"] as? String {
                print(lastName)
            }
            
        }
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("loginbutton 1")
        let parameters = ["fields": "email, first_name, last_name, picture.type(large)"]
        FBSDKGraphRequest(graphPath: "me", parameters: parameters).startWithCompletionHandler { (connection, result, error) -> Void in
            
            if error != nil {
                print(error)
                return
            }
            
            if let email = result["email"] as? String {
                print(email)
            }
            
            if let firstName = result["first_name"] as? String {
                print(firstName)
            }
            
            if let lastName = result["last_name"] as? String {
                print(lastName)
            }
            
        }
        print("completed login")
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("loginbutton 2")
        print("logout")
    }
    
    func loginButtonWillLogin(loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}