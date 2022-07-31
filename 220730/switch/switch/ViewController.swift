//
//  ViewController.swift
//  switch
//
//  Created by TJ on 2022/07/30.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var tfKor: UITextField!
    @IBOutlet weak var tfMath: UITextField!
    @IBOutlet weak var tfEng: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    var sum = 0
    var avg = 0.0
    var gradeCheck = [90.0,80.0,70.0,60.0]
    var grade = ["A","B","C","D"]
    var result = ""
    var dept = ["":0]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        dept = ["kor":Int(tfKor.text!) ?? 0,"math":Int(tfMath.text!) ?? 0,"eng":Int(tfEng.text!) ?? 0]
        calc(argDept: dept)
        
    }
    
    
    func calc(argDept:Dictionary<String, Int>){
        for i in argDept{
            sum += i.value
        }
        avg = Double(sum) / Double(argDept.count)
        print(sum)
        print(Double(argDept.count))
        for i in gradeCheck{
            if avg > i {
                lblResult.text = "평균은 \(String(avg))점으로 \(grade)등급 입니다."
                sum = 0
                break
            }
            

        }
    }
}

