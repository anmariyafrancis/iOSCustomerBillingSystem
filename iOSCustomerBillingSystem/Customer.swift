//
//  CustomerDetails.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer
{
    var customerId:String
    var firstName:String
    var lastName:String
    var email:String
    var password:String
    var fullName:String
    {
        return "\(firstName) \(lastName)"
    }
    
    init(customerId:String,firstName:String,lastName:String,email:String,password:String)
    {
        self.customerId=customerId
        self.firstName=firstName
        self.lastName=lastName
        self.email=email
        self.password=password
    }
}
