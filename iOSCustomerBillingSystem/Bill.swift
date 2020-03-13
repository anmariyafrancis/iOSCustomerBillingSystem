//
//  Bill.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Bill
{
    var billId : Int
    var billDate : String
    var billType: String
    var totalBill : String
       
    init(billId : Int,billDate : String,billType:String,totalBill:String)
     {
            self.billId = billId
            self.billDate = billDate
            self.billType = billType
            self.totalBill = totalBill
    }
}
