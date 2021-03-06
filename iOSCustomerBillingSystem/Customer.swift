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
    var customerId:Int
    var firstName:String
    var lastName:String
    var email:String
    var fullName:String
    {
        return "\(firstName) \(lastName)"
    }
    
    init(customerId:Int,firstName:String,lastName:String,email:String)
    {
        self.customerId=customerId
        self.firstName=firstName
        self.lastName=lastName
        self.email=email
    }
}
