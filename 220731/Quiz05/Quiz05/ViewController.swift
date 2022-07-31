//
//  ViewController.swift
//  Quiz05
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum: UITextField!
    @IBOutlet weak var tvNumList: UITextView!
    var strNumList = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        
        let numCheck = nilCheck()
        if numCheck == 1 {
            strNumList = strCheck()
            tvNumList.text = strNumList
        }

        strNumList = ""
        tfNum.text = ""
    }
    
    func nilCheck () -> Int {
        let strNum = tfNum.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let chkNumList = [2,3,4,5,6,7,8,9]
        if !strNum.isEmpty {
            for i in chkNumList{
                if strNum == String(i) {
                    return 1
                }
            }
        }
        return 0
    }
    
    func strCheck () -> String {
        let num = Int(tfNum.text!)!
        strNumList = "\n\n"
        for i in 1...9 {
            strNumList += "\(num) * \(i) = \(num * i) \n"
        }
        return strNumList
    }
} //ViewController


/*
 
 
     
 
 */
