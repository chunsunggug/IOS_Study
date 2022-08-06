//
//  ViewController.swift
//  Quiz02
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
       
    @IBOutlet weak var tfPlus: UITextField!
    @IBOutlet weak var tfMinus: UITextField!
    @IBOutlet weak var tfMultiply: UITextField!
    @IBOutlet weak var tfDivideShare: UITextField!
    @IBOutlet weak var tfDivideRemainder: UITextField!
    
    var firstNum = 0
    var secondNum = 0
    
    var plusResult = 0
    var minusResult = 0
    var multiplyResult = 0
    var shareResult = 0
    var remainderResult = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text = ""
        tfDivideShare.textColor = UIColor.red
        tfDivideRemainder.textColor = UIColor.blue
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        calculrate()
    }
    func calculrate () {
        
        print(tfNum1.text!.count)
        
        if (tfNum1.text!.count == 0) || (tfNum2.text!.count == 0) {
            lblMessage.text = "숫자를 확인하세요."
        } else{
            firstNum = Int(tfNum1.text!) ?? 0
            secondNum = Int(tfNum2.text!) ?? 0
            
            plusResult = firstNum + secondNum
            minusResult = firstNum - secondNum
            multiplyResult = firstNum * secondNum
            
            if(secondNum == 0){
                shareResult = 0
                remainderResult = 0
            }else{
                shareResult = firstNum / secondNum
                remainderResult = firstNum % secondNum
            }
            displayResult()
        }
    }
    func displayResult () {
        
        tfPlus.text = String(plusResult)
        tfMinus.text = String(minusResult)
        tfMultiply.text = String(multiplyResult)
        tfDivideShare.text = String(shareResult)
        tfDivideRemainder.text = String(remainderResult)
        
        lblMessage.text = "계산이 완료되었습니다."
    }
}

