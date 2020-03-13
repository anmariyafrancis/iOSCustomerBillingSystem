//
//  Hydro.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill
{
   
  
  var agencyName : String
  var unitConsumed : Int
   
  init(billId: Int, billDate: String, billType:String,totalBill:String,agencyName : String, unitConsumed : Int)
  {
    self.agencyName = agencyName
    self.unitConsumed = unitConsumed
    super.init(billId: billId, billDate: billDate, billType: billType, totalBill: totalBill)
  }
}
