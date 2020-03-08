//
//  CustomerListTableViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController :UIViewController,UITableViewDelegate,UITableViewDataSource
{
    @IBOutlet weak var tblCustomer: UITableView!
    var firstName: String!
      var lastName: String!
      var email: String!
      var customerCell : [Customer] = []
       
       
      var tempvar = DataStorage.getInstance()
       
      override func viewDidLoad() {
        super.viewDidLoad()
        let getdata = DataStorage.getInstance()
        getdata.createCust()
         tblCustomer.delegate=self
         tblCustomer.dataSource=self
        navigationItem.hidesBackButton=true
        addLogoutButton()
        addNewCustomerButton()
         
        
         
        // Do any additional setup after loading the view.
      }
       
       
       
      private func addNewCustomerButton()
      {
       let btnAdd = UIBarButtonItem(image: UIImage(systemName: "plus") , style: .plain, target: self, action: #selector(self.add))
       self.navigationItem.rightBarButtonItem = btnAdd
      }
      @objc func add()
      {
       let sb = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = sb.instantiateViewController(identifier: "thirdVC") as! AddNewCustomerViewController_AddNewCustomerViewController
        
         self.navigationController?.pushViewController(thirdVC, animated: true)
      }
       
      private func addLogoutButton()
      {
        
       let btnLogout = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(self.logout))
        
       self.navigationItem.leftBarButtonItem = btnLogout
      }
       
      @objc func logout()
      {
        self.navigationController?.popToRootViewController(animated: true)
        
      }
       
      /*
      // MARK: - Navigation
      // In a storyboard-based application, you will often want to do a little preparation before navigation
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
      }
      */
      func numberOfSections(in tableView: UITableView) -> Int {
         return 1
       }
        
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return tempvar.returnCount()
       }
        
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
       {
         let x = tempvar.returnCustObject(custID: Int(indexPath.row+1))
         let cell = tableView.dequeueReusableCell(withIdentifier: "customersName", for: indexPath)
         cell.textLabel?.text = x?.fullName
          return cell
       }
       func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return "List of Customers"
       }
        
       override func viewWillAppear(_ animated: Bool) {
           tblCustomer.reloadData()
           
         }
    }
