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
   
let c1 = Customer(customerId: 1, firstName: "anu", lastName: "anu", email: "aas@gmail.com ")
  AddCustomer(customer: c1)
   
  
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
}
