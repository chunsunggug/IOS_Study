//
//  ViewController.swift
//  Quiz03
//
//  Created by TJ on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var tfInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
        //tfResult.textAlignment = NSTextAlignment.center
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tfInput.becomeFirstResponder()
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        // optional 처리
        // ! 값이 있기 때문에 강제로 [data] "[]" 제거 후 data만 남김 , 일반적인 방법은 guard 구문을 변수앞에 붙임
        // if else 처리 고전적인 방법
        
        guard let strInput = tfInput.text else { return }
        // 만약 tfInput의 값이 nil이라면 괄호 안에서 처리
        //print(strInput)
        
        let numCheck: Int = checkNil(str: strInput)
        // 함수 호출

        if numCheck == 1{
            let result : String = numberDecision(str: strInput)
            lblResult.text = "입력하신 숫자는 \(result) 입니다."
        }else{
            lblResult.text = "숫자를 입력하세요."
        }
        // guard (tfInput.text != nil) != nil else { return }
        // if else 처리 고전적인 방법
        
        
//        내가 작업한 방법은 소스가 복잡해질 수 있음. ( 가독성 향상을 위해 함수 생성 및 소스 쪼게기 )
//        if tfInput.text?.isEmpty == true{
//            lblResult.text = "숫자를 입력하세요."
//        }else{
//            if Int(tfInput.text!)! % 2 == 0{
//                lblResult.text = "입력하신 숫자는 짝수 입니다."
//            }else{
//                lblResult.text = "입력하신 숫자는 홀수 입니다."
//            }
//            tfInput.becomeFirstResponder()
//        }
    }
    
    // 함수 생성 func checkNil(str:String) -> Int ////// func 함수 선언 checkNil 함수명 (args : type) -> return type
    func checkNil(str:String) -> Int { // -> thin arrow return value => fet arrow function
        if str.isEmpty{
            return 0
        }else{
            return 1
        }
    }
    
    func numberDecision(str : String) -> String {
        if Int(str)! % 2 == 0{
            return "짝수"
        }else{
            return "홀수"
        }
    }
    
} // ViewController

