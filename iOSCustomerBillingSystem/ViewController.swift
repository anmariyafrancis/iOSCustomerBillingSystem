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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnLogin(_ sender: UIBarButtonItem)
    {
        var email:String=txtEmail.text!
        var password:String=txtPassword.text!
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
                        if flag==true
                        {
                            self.navigationController?.popViewController(animated: true)
                        }
                        else
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


