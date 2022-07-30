//
//  ViewController.swift
//  TextName
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var tfName: UITextField!
    var feldContent = ""
    @IBOutlet weak var tfTip: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.placeholder = "이름을 입력하세요!"
        // Do any additional setup after loading the view.
        self.tfName.delegate = self
        tfTip.text = ""
    }
    
    // UITextFieldDelegate Return key 이벤트 함수
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.tfName {
            print("Enter")
            feldContent = tfName.text!
            labelName.text! += " "+feldContent
            tfName.text = ""
            tfTip.text = ""
        }
        return true
    }
    
    
    @IBAction func btnSend(_ sender: UIButton) {
        if(tfName.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == true){
            tfTip.text = "Name 안의 값을 입력하세요."
            tfTip.textColor = UIColor.red
        }else{
            feldContent = tfName.text!
            labelName.text! += " "+feldContent
            tfTip.text = ""
        }
        tfName.text = ""
        
        
// ----------------Empty 사용----------------------
//        if(tfName.text?.isEmpty == true){
//            tfTip.text = "Name 안의 값을 입력하세요."
//            tfTip.textColor = UIColor.red
//        }else{
//            feldContent = tfName.text!
//            labelName.text! += " "+feldContent // Forced Unwrapping 옵셔널 상태의 괄호와 쌍따옴표 안의 데이터만 가져오라는 의미가 !
//            tfName.text = ""
//            tfTip.text = ""
//        }
        
// ----------------Count 사용----------------------
//        if(tfName.text?.count == 0){
//            tfTip.text = "Name 안의 값을 입력하세요."
//            tfTip.textColor = UIColor.red
//        }else{
//            feldContent = tfName.text!
//            labelName.text! += " "+feldContent // Forced Unwrapping 옵셔널 상태의 괄호와 쌍따옴표 안의 데이터만 가져오라는 의미가 !
//            tfName.text = ""
//            tfTip.text = ""
//        }
        
    }
    @IBAction func btnClaer(_ sender: UIButton) {
        
            labelName.text = "Welcome!"
            tfName.text = ""
            tfTip.text = ""
        
    }
}

