//
//  Internet.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet : Bill
{
   
  var internetProvider : String
  var internetGBUsed : Int
    
    init(billId: Int, billDate: String,billType:String,totalBill:String,internetProvider : String, internetGBUsed : Int)
  {
    self.internetProvider = internetProvider
    self.internetGBUsed = internetGBUsed
    super.init(billId: billId, billDate: billDate, billType: billType, totalBill: totalBill)
  }
}
