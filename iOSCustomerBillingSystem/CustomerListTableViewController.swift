//
//  CustomerListTableViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UITableViewController
{

    @IBOutlet var tblCustomers: UITableView!
    lazy var customersName: [Customer] = []
    
    override func viewDidLoad()
    {
    
        super.viewDidLoad()
        customersName = DataStorage.getInstance().getAllCustomers()
    }
    
    // MARK: - Table view data source

   override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
}
