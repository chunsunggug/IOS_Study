//
//  ViewController.swift
//  Quiz02
//
//  Created by TJ on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfAdd: UITextField!
    @IBOutlet weak var tfSub: UITextField!
 
    @IBOutlet weak var tfMul: UITextField!
    @IBOutlet weak var tfDivQut: UITextField!
    @IBOutlet weak var tfDivRema: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Comment는 알고리즘 즉 작업 절차 표기
        // Do any additional setup after loading the view.
        // 앱 실행 시 최초 작동 (화면 전환과는 무관)
        lblMessage.text = ""
        
        // 결과 부분 TextField를 Read Only로 변환
        tfAdd.isUserInteractionEnabled = false
        tfSub.isUserInteractionEnabled = false
        tfMul.isUserInteractionEnabled = false
        tfDivQut.isUserInteractionEnabled = false
        tfDivRema.isUserInteractionEnabled = false
        tfAdd.isUserInteractionEnabled = false
        
    }

    @IBAction func btnCalc(_ sender: UIButton) {
//        if tfNum1.text?.count == 0 || tfNum2.text?.count==0 {
//
//        }
        
        if tfNum1.text?.isEmpty == true || tfNum2.text?.isEmpty==true {
            tfNum1.becomeFirstResponder() // 커서 포커스 주기
            lblMessage.text = "숫자를 입력 하세요."
            lblMessage.textColor = UIColor.red
        }else{
            tfAdd.text = String(Int(tfNum1.text!)! + Int(tfNum2.text!)!)
            tfSub.text = String(Int(tfNum1.text!)! - Int(tfNum2.text!)!)
            tfMul.text = String(Int(tfNum1.text!)! * Int(tfNum2.text!)!)
            
            if tfNum2.text=="0"{
                tfDivQut.text = "계산 불가"
                tfDivRema.text = "계산 불가"
                tfDivQut.textColor = UIColor.red
                tfDivRema.textColor = UIColor.red
            }else{
                tfDivQut.text = String(Int(tfNum1.text!)! / Int(tfNum2.text!)!)
                tfDivRema.text = String(Int(tfNum1.text!)! % Int(tfNum2.text!)!)
            }
            lblMessage.text = "계산이 완료 되었습니다."
            lblMessage.textColor = UIColor.blue
        }
        //tfNum1.text=""
        //tfNum2.text=""
        tfNum1.becomeFirstResponder() // 커서 포커스 주기
        
    }
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

