//
//  ViewController.swift
//  Quiz32
//
//  Created by TJ on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfStart: UITextField!
    @IBOutlet weak var tfEnd: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
        tfStart.text = nil
        tfEnd.text = nil
    
    }

    @IBAction func btnRange(_ sender: UIButton) {
        
        if tfStart.text?.isEmpty != nil {
            tfStart.text = "0"
        }
        if tfEnd.text?.isEmpty != nil {
            tfEnd.text = "0"
        }
        
        let startStr = tfStart.text ?? "0"
        let endStr = tfEnd.text ?? "0"

        var startNum =  Int(startStr)
        var endNum =  Int(endStr)
        let tempNum : Int
        
        
        if startNum! > endNum! {
            tempNum = endNum!
            endNum = startNum
            startNum = tempNum
        }
        
        let sumList =  startNum!...endNum!
        var sum = 0
        
        for i in sumList{
            sum += i
        }
        
        lblResult.text = String(sum)

    }
    
}

