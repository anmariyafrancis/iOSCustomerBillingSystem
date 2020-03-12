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
   
  var billType : String=""
  var internetProvider : String
  var internetGBUsed : Int
    
  init(billId: String, billDate: String,internetProvider : String, internetGBUsed : Int)
  {
    self.internetProvider = internetProvider
    self.internetGBUsed = internetGBUsed
    super.init(billId: billId, billDate: billDate)
  }
}
