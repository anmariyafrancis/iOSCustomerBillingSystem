//
//  CustomerListTableViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 0
    }
    @IBAction func btnLogout(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
}
