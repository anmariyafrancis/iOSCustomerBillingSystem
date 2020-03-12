//
//  Mobile.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : Bill
{
   
      var billType : String = ""
      var manufacturerName : String
      var mobilePlan : String
      var mobileNumber : String
      var internetGBUsed : Int
      var minuteUsed : Int
        
      init(billId: String, billDate: String, manufacturerName : String, mobilePlan : String, mobileNumber : String, internetGBUsed : Int, minuteUsed : Int)
      {
        self.manufacturerName = manufacturerName
        self.mobilePlan = mobilePlan
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        super.init(billId: billId, billDate: billDate)
      }
}
