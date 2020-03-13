//
//  Bill.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum BillType
{
    case Mobile
    case Internet
    case Hydro
}

class Bill
{
    var billId :  String
    var billDate : String
    var billType :String
    var totalBill : Double = 0.0
       
    init(billId : String,billDate : String,billType:String,totalBill:Double)
     {
            self.billId = billId
            self.billDate = billDate
            self.billType=billType
            self.totalBill=totalBill
    }
}
