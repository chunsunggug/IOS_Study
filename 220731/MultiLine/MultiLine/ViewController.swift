//
//  ViewController.swift
//  MultiLine
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.isEditable = false // Read Only
    }

    @IBAction func btnAppend(_ sender: UIButton) {
        // tfInput의 nil 여부 체크
        let numCheck = checkNil()
        
        if numCheck == 1 {
            tvResult.text += tfInput.text! + "\n"
        }
        tfInput.text = ""
    }
    // nil check function
    func checkNil () -> Int {
        let check = tfInput.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty {
            return 0
        }else{
            return 1
        }
    }
    
} // ViewController

