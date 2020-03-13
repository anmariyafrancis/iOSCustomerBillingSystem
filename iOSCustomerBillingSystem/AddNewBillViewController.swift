//
//  AddNewBillViewController.swift
//  iOSCustomerBillingSystem
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

enum PickerType:Int
{
    case BILLTYPE = 0
}

class AddNewBillViewController: UIViewController
{
    let a = DataStorage.getInstance()
    
    @IBOutlet weak var textField_billId: UITextField!
    @IBOutlet weak var textField_Date: UITextField!
    @IBOutlet weak var textField_billType: UITextField!
    @IBOutlet weak var textField_billAmount: UITextField!
    @IBOutlet weak var pickerBillType: UIPickerView!
    
    var datePicker : UIDatePicker!
    var billTypeArray = ["Internet", "Hydro", "Mobile"]
    var billId: String!
    var billDate: String!
    var billType: String!
    var billAmount:String!
    var bill: Bill!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        textField_Date.delegate = self
        self.pickerBillType.delegate = self
        self.pickerBillType.dataSource = self
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- textFiled Delegate
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        self.pickUpDate(self.textField_Date)
    }
    
    //MARK:- Function of datePicker
    func pickUpDate(_ textField : UITextField)
    {
        
        // DatePicker
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePicker.Mode.date
        textField.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = .green//UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewBillViewController.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewBillViewController.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
        
    }
    // MARK:- Button Done and Cancel
    @objc func doneClick()
    {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        textField_Date.text = dateFormatter1.string(from: datePicker.date)
        textField_Date.resignFirstResponder()
    }
    @objc func cancelClick()
    {
        textField_Date.resignFirstResponder()
    }
    private func saveBillButton()
    {
        let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(AddNewBillViewController.saveBill(sender:)))
        navigationItem.rightBarButtonItem=btnSave
    }
    @objc func saveBill(sender: UIBarButtonItem)
    {
         let sb1=UIStoryboard(name: "Main", bundle: nil)
         let fourthVC = sb1.instantiateViewController(identifier: "fourthVC") as! ShowBillDetailsViewController
         let bId = textField_billId.text
         let bDate = textField_Date.text
         let bType = textField_billType.text
         let bAmount = textField_billAmount.text
         a.addNewBill(Bill_Id: bId!, Bill_Date: bDate!, Bill_Type: bType!, Bill_Amount: bAmount!)
         let alert = UIAlertController(title: "Success", message: "Congrats! Added Successfully", preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alert: UIAlertAction!) in self.navigationController?.popViewController(animated: true)}))
         self.present(alert, animated: true)
        }
}
extension AddNewBillViewController:UIPickerViewDelegate
{
    //Set the Value for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        //return self.courseArray[row]
        
            return self.billTypeArray[row]
    }
    
    //Fetch the selected values
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        //self.lblCourseName.text = self.courseArray[row]
        
        let strBillType = self.billTypeArray[pickerView.selectedRow(inComponent: PickerType.BILLTYPE.rawValue)]
        
        self.textField_billType.text = strBillType
    }
}
extension AddNewBillViewController:UIPickerViewDataSource
{
    
    //No of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    //No. of items in picker view
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int)->Int
    {
        
            return self.billTypeArray.count
    }
}
extension AddNewBillViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if !textField.text!.isEmpty
        {
            if textField.tag == 0
            {
                self.billTypeArray.append(textField.text!)
            }
            textField.resignFirstResponder()
            self.pickerBillType.reloadComponent(textField.tag)
        }
        return true
    }
}
