//
//  ViewController.swift
//  TextFieldSwitchCalc
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfAddResult: UITextField!
    @IBOutlet weak var tfSubtractResult: UITextField!
    @IBOutlet weak var tfMultiplyResult: UITextField!
    @IBOutlet weak var tfDivideResult: UITextField!
    
    @IBOutlet weak var swAddAction: UISwitch!
    @IBOutlet weak var swSubtractAction: UISwitch!
    @IBOutlet weak var swMultiplyAction: UISwitch!
    @IBOutlet weak var swDivideAction: UISwitch!
    
    // 계산 결과값을 저장하는 전역 변수
    var storeAdd = ""
    var storeSubtract = ""
    var storeMultiply = ""
    var storeDivide = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBAction func btnCalc(_ sender: UIButton) {
        let firstNum = Int(tfNum1.text!) ?? 0
        let secondNum = Int(tfNum2.text!) ?? 0
        calculate(first: firstNum, second: secondNum)
        
    }
    
    func calculate(first:Int,second:Int){
        storeAdd = String(first + second)
        storeSubtract = String(first - second)
        storeMultiply = String(first * second)
        
        if(second == 0){
            storeDivide = "impossible"
        }else{
            storeDivide = String(Double(first) / Double(second))
        }
        
        displayResult();
    }
    
    func displayResult(){
        tfAddResult.text = storeAdd
        tfSubtractResult.text = storeSubtract
        tfMultiplyResult.text = storeMultiply
        tfDivideResult.text = storeDivide
        
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        tfNum1.text?.removeAll()
        tfNum2.text?.removeAll()
        
        storeAdd = ""
        storeSubtract = ""
        storeMultiply = ""
        storeDivide = ""
        displayResult();
        swEnalbe();
        tfNum1.becomeFirstResponder();
        
    }
    
    func swEnalbe(){
        swAddAction.isOn = true;
        swSubtractAction.isOn = true;
        swMultiplyAction.isOn = true;
        swDivideAction.isOn = true;
    }
    
    @IBAction func swAddAction(_ sender: UISwitch) {
        if sender.isOn{
            tfAddResult.text = storeAdd
        } else{
            tfAddResult.text = ""
        }
        
    }
    
    @IBAction func swSubtractAction(_ sender: UISwitch) {
        if sender.isOn{
            tfSubtractResult.text = storeSubtract
        } else{
            tfSubtractResult.text = ""
        }
    }
    
    @IBAction func swMultiplyAction(_ sender: UISwitch) {
        if sender.isOn{
            tfMultiplyResult.text = storeMultiply
        } else{
            tfMultiplyResult.text = ""
        }
    }
    
    @IBAction func swDivideAction(_ sender: UISwitch) {
        if sender.isOn{
            tfDivideResult.text = storeDivide
        } else{
            tfDivideResult.text = ""
        }
    }
    
}

