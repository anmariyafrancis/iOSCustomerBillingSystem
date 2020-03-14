//
//  ShowBillDetailsViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    @IBOutlet weak var tblBill: UITableView!
    
    var billId: Int!
    var billDate: String!
    var billType: String!
    var billAmount:String!
    var billCell : [Bill] = []
    var tempvar = DataStorage.getInstance()
     
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let getdata = DataStorage.getInstance()
        getdata.createCust()
        tblBill.delegate=self
        tblBill.dataSource=self
        navigationItem.hidesBackButton=true
        addNewBillutton()
        addLogoutButton()
        // Do any additional setup after loading the view.
    }
    private func addNewBillutton()
    {
        let btnAdd = UIBarButtonItem(title:"New Bill", style: .plain, target: self, action: #selector(self.add))
        self.navigationItem.rightBarButtonItem = btnAdd
    }
    @objc func add()
    {
     let sb = UIStoryboard(name: "Main", bundle: nil)
      let fivthVC = sb.instantiateViewController(identifier: "fivthVC") as! AddNewBillViewController
      
       self.navigationController?.pushViewController(fivthVC, animated: true)
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
    func numberOfSections(in tableView: UITableView) -> Int
    {
      return 1
    }
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      return tempvar.returnCount()
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
      let x = tempvar.returnBillObject(billId:Int(indexPath.row+1))
      let cell = tableView.dequeueReusableCell(withIdentifier: "billDetails", for: indexPath)
      cell.textLabel?.text = x?.totalBill
       return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
      return "List of Bills"
    }
     
    override func viewWillAppear(_ animated: Bool)
    {
        tblBill.reloadData()
        
      }
}
