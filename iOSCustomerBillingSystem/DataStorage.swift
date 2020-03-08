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
    
    private static let instance = DataStorage()
    private lazy var customersList: [String: Customer] = [:]

    private init(){}

    static func getInstance() -> DataStorage
    {
        return instance
    }
    
    func addCustomer(customer: Customer)
    {
        self.customersList.updateValue(customer, forKey: customer.customerId)
    }
    func getAllCustomers() -> [Customer]{
        return Array(customersList.values)
    }
    func loadData()
    {
        customersList.updateValue(Customer(customerId: "1", firstName: "Anmariya", lastName: "Francis", email: "anmariya@gmail.com"), forKey: "1")
        customersList.updateValue(Customer(customerId: "2", firstName: "Aldin", lastName: "Jose", email: "aldin@gmail.com"), forKey: "2")
        customersList.updateValue(Customer(customerId: "3", firstName: "Rose", lastName: "Jis", email: "rose@gmail.com"), forKey: "3")
        customersList.updateValue(Customer(customerId: "4", firstName: "Jis", lastName: "Jose", email: "jis@gmail.com"), forKey: "4")
        customersList.updateValue(Customer(customerId: "5", firstName: "Baby", lastName: "Francis", email: "baby@gmail.com"), forKey: "5")
        
    }
    
}

