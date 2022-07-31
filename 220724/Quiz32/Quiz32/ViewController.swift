//
//  ViewController.swift
//  Quiz32
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    var num1st:Int = 0
    var num2nd:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text = ""
    }

    @IBAction func btnCalc(_ sender: UIButton) {
    
        // 입력을 안한 경우 기본값 0으로 대체하여 계산하기
        
//        let numNums = [Int(tfNum1.text!) ?? 0,Int(tfNum2.text!) ?? 0]
//        print(numNums)
//        print(type(of: numNums))
        
        //범위 합계 구하기
//        var totalNum : Int = 0
//        for i in numNums {
            
//        }
        
        
        orderNum()
        
        // 입력 숫자의 크기 비교
//        let num1st:Int
//        let num2nd:Int
        
//        if numNum1 > numNum2 {
//            num1st = numNum2
//            num2nd = numNum1
//        }else{
//            num1st = numNum1
//            num2nd = numNum2
//        }
//
        
        
        //범위 합계 구하기
        
//        var totalNum = 0
//        for i in num1st...num2nd{
//            totalNum += i
//        }
//
//        lblMessage.text = "숫자의 합계는 \(totalNum)입니다."
        
        
        lblMessage.text = "숫자의 합계는 \(sumRange())입니다."
    
    }

    // 숫자 정렬 함수
    func orderNum(){
        let numNum1 = Int(tfNum1.text!) ?? 0
        let numNum2 = Int(tfNum2.text!) ?? 0
        
        if numNum1 > numNum2 {
            num1st = numNum2
            num2nd = numNum1
        }else{
            num1st = numNum1
            num2nd = numNum2
        }
        
    }

    // 범위 구하는 함수
    func sumRange() -> Int{
        var totalNum = 0
        for i in num1st...num2nd{
            totalNum += i
        }
        return totalNum
    }
} // ViewController

