//
//  CustomerListTableViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogout(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
}
