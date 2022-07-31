//
//  ViewController.swift
//  Calc
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    
    @IBOutlet weak var addSwitch: UISwitch!
    @IBOutlet weak var minusSwitch: UISwitch!
    @IBOutlet weak var multiSwitch: UISwitch!
    @IBOutlet weak var divisionSwitch: UISwitch!
    
    
    @IBOutlet weak var tfAdd: UITextField!
    @IBOutlet weak var tfMinus: UITextField!
    @IBOutlet weak var tfMulti: UITextField!
    @IBOutlet weak var tfDivision: UITextField!
    
    var num1 = 0
    var num2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCal(_ sender: UIButton) {
        
            
            if tfNum1.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                tfNum1.text = "0"
            }
            if tfNum2.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                tfNum2.text = "0"
            }
        
            num1 = Int(tfNum1.text!)!
            num2 = Int(tfNum2.text!)!
            
            tfAdd.text = String(num1 + num2)
            tfMinus.text = String(num1 - num2)
            tfMulti.text = String(num1 * num2)
            if Double(num2) != 0 {
                tfDivision.text = String(Double(num1) / Double(num2))
            }else{
                tfDivision.text = "0 으로 나눌수는 없습니다."
            }
    }
    
    @IBAction func btnDelete(_ sender: UIButton) {
        addSwitch.isOn = true
        minusSwitch.isOn = true
        multiSwitch.isOn = true
        divisionSwitch.isOn = true
        
        tfNum1.text = ""
        tfNum2.text = ""
        
        tfAdd.text = ""
        tfMinus.text = ""
        tfMulti.text = ""
        tfDivision.text = ""
    }
    
    @IBAction func addSwitchBtn(_ sender: UISwitch) {
        if sender.isOn == true {
            var sum = num1 + num2
            tfAdd.text = String(sum)
        }else{
            tfAdd.text = ""
        }
        
    }
    
    @IBAction func minusSwitchBtn(_ sender: UISwitch) {
        if sender.isOn == true {
            var minus = num1 - num2
            tfMinus.text = String(minus)
        }else{
            tfMinus.text = ""
        }
    }
    
    @IBAction func multiSwitchBtn(_ sender: UISwitch) {
        if sender.isOn == true {
            var multi = num1 * num2
            tfMulti.text = String(multi)
        }else{
            tfMulti.text = ""
        }
    }
    @IBAction func divisionSwitchBtn(_ sender: UISwitch) {
        if sender.isOn == true {
            if num2 == 0 {
                tfDivision.text = "0 으로 나눌수는 없습니다."
            }else{
                var division = Double(num1) / Double(num2)
                tfDivision.text = String(division)
            }
        }else{
            tfDivision.text = ""
        }
    }
    
}

