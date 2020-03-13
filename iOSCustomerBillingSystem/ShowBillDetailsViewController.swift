//
//  ShowBillDetailsViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
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
      let thirdVC = sb.instantiateViewController(identifier: "fivthVC") as! AddNewBillViewController
      
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
      
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
