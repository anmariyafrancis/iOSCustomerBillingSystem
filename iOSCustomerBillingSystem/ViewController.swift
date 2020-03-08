//
//  ViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swRemember: UISwitch!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func rememberMeSwitchValue()
    {
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "email")
        {
            txtEmail.text = email
            
            if let password = userDefault.string(forKey: "password")
            {
                txtPassword.text = password
            }
        }
    }
    @IBAction func btnLogin(_ sender: UIButton)
    {
        let email:String=txtEmail.text!
        let password:String=txtPassword.text!
        if let bundlepath = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
        {
                if let dictionary = NSMutableDictionary(contentsOfFile: bundlepath)
                {
                    if let users = dictionary["users"] as? [[String:String]]
                    {
                        var flag = false
                        for userList in users
                        {
                            if userList["email"] == email && userList["password"] == password
                            {
                                flag=true
                            }
                        }
                        if flag==false
                        {
                            let alertController = UIAlertController(title: "Error", message:"Invalid email id or password", preferredStyle: .actionSheet)
                                                           alertController.addAction(UIAlertAction(title: "Login Again", style: .default))
                                                           self.present(alertController, animated: true, completion: nil)
                        }
                        
                    }
                }
            }
    }
}


