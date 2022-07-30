//
//  ViewController.swift
//  Quiz31
//
//  Created by TJ on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!

    @IBOutlet weak var tfResult: UITextField!
    
    @IBOutlet weak var lblTip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblTip.text = ""
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        
        let names = [tfNum1.text,tfNum2.text]
        
        
        //guard let strNum1 = tfNum1.text else {return}
        //guard let strNum2 = tfNum2.text else {return}
        
        var chkResult = 0
        var result: String?
        
        for i in names {
            chkResult += checkNum(str:i!)
        }
        
        //chkResult += checkNum(str: strNum1)
        //chkResult += checkNum(str: strNum2)
        
        if chkResult < 0 {
            lblTip.text = "숫자를 입력하세요."
        } else if chkResult < 2 {
            lblTip.text = "짝수를 입력하세요."
        }
        else{
            result = String(calNum(str1: names[0]!, str2: names[1]!))
            //result = String(calNum(str1: strNum1, str2: strNum2))
            tfResult.text = result!
            lblTip.text = "계산이 완료 되었습니다."
        }
        
    }
    
    
    func checkNilSpace(strNum1:String,strNum2:String) -> Bool{
        if strNum1.isEmpty || strNum2.isEmpty {
            return false
        }else{
            return true
        }
    }
    
    func checkNum(str:String) -> Int {
        if str.isEmpty {
            return -1
        }else{
            if Int(str)! % 2 != 0 {
                return 0
            }
            return 1
        }
    }
    
    func calNum(str1:String,str2:String) -> Int {
        return Int(str1)! + Int(str2)!
    }
  
}

