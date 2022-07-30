//
//  ViewController.swift
//  Quiz02
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var secondNum: UITextField!
    
    
    @IBOutlet weak var sum: UITextField!
    @IBOutlet weak var minus: UITextField!
    
    @IBOutlet weak var multiply: UITextField!
    @IBOutlet weak var division1: UITextField!
    @IBOutlet weak var division2: UITextField!
    
    @IBOutlet weak var resultTip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultTip.text = ""
    }

    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func calc(_ sender: UIButton) {
        
// ---------------------1번 방법 Any 없이 적용------------------
        var vFirst = firstNum.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        var vSecond = secondNum.text!.trimmingCharacters(in: .whitespacesAndNewlines)

        if(vFirst.isEmpty != true && vSecond.isEmpty != true ){
            var fNum : Int
            var sNum : Int
            fNum = Int(vFirst)!
            sNum = Int(vSecond)!

            sum.text = String(fNum + sNum)
            minus.text = String(fNum - sNum)
            multiply.text = String(fNum * sNum)
            if(fNum == 0){
                division1.text = "0으로"
                division2.text = "나눌 수 없습니다."
            }else{
                division1.text = String(fNum / sNum)
                division2.text = String(fNum % sNum)
            }

            division1.textColor = UIColor.red
            division2.textColor = UIColor.blue

            resultTip.text = "계산이 되었습니다."
            resultTip.textColor = UIColor.blue
        }else{
            resultTip.text = "숫자를 확인하세요"
            resultTip.textColor = UIColor.red
        }

        
        
// ---------------------2번 방법 Any 적용------------------
        //var vFirst:String = firstNum.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        //var vSecond:String = secondNum.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        //var fNum : Any = vFirst
        //var sNum : Any = vSecond
        //resultTip.textColor = UIColor.red
        //if(vFirst.isEmpty == true){
        //    resultTip.text = "첫번째 숫자를 확인하세요"
        //    return
        //}
        //if(vSecond.isEmpty == true){
        //    resultTip.text = "두번째 숫자를 확인하세요"
        //    return
        //}
        
        
        
        //resultTip.textColor = UIColor.blue
        //resultTip.text = "계산이 완료되었습니다."
        
        //var vSum = Int(fNum as! Int)
        //print(type(of: fNum as! Int))
        //print(vSum)
        //print(type(of: vSum))
        //print(vSum)
        //print(type(of: vSum))
        //sum.text =
        //minus.text =
        //multiply.text =
        //division1.text =
        //division2.text =
        
        
    }
    
}

