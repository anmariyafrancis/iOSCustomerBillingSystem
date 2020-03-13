//
//  DataStorage.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class DataStorage
{
    
    private var customerDictionary = [Int:Customer]()
    private var billDictionary = [Int:Bill]()
    private static var obj = DataStorage()
    private  init () {   }
    internal static func getInstance() -> DataStorage
    {
      return obj
    }
 
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
      let c = customerDictionary.count + 1
       
      let temp = Customer(customerId: c, firstName: First_Name, lastName: Last_Name, email: email)
      self.AddCustomer(customer: temp)
    }
    func addNewBill(Bill_Id : String, Bill_Date : String, Bill_Type : String,Bill_Amount:String)
    {
      let c = billDictionary.count + 1
      let temp = Bill(billId: c, billDate: Bill_Date, billType: Bill_Type,totalBill:Bill_Amount)
      self.AddBill(bill: temp)
    }
 
    func returnCustObject(custID : Int) -> Customer?
    {
          for (k,v) in customerDictionary
          {
            if custID == k
            {
              return v
            }
          }
          return nil
    }
 
    func returnCount() -> Int
    {
      return customerDictionary.count
    }
     
    func createCust()
    {
       
        let c1 = Customer(customerId: 1, firstName: "Anmariya", lastName: "Francis", email: "anmariya@gmail.com ")
        AddCustomer(customer: c1)
        let c2 = Customer(customerId: 2, firstName: "Rose", lastName: "Jis", email: "rose@gmail.com ")
        AddCustomer(customer: c2)
        let c3 = Customer(customerId: 3, firstName: "Aldin", lastName: "Jose", email: "aldin@gmail.com ")
        AddCustomer(customer: c3)
       let c4 = Customer(customerId: 4, firstName: "Jennifer", lastName: "Jis Jiyo ", email: "jenifer@gmail.com ")
       AddCustomer(customer: c4)
      let c5 = Customer(customerId: 5, firstName: "Baby", lastName: "Francis", email: "baby@gmail.com ")
       AddCustomer(customer: c5)
       
    }
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerId)
    }
    func printdata()
    {
      for i in customerDictionary.values
      {
        print(i.fullName)
      }
    }
    func AddBill(bill: Bill)
    {
        billDictionary.updateValue(bill, forKey: bill.billId)
    }
  
}
