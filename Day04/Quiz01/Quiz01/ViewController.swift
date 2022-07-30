//
//  ViewController.swift
//  Quiz01
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLabel: UILabel!
    
    let name = "홍길동"
    let label = "Welcome!"
    var state = false // false = 변수 미포함 라벨 true = 이름 포함 라벨
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblLabel.text = lab	el
    }

    @IBAction func btnClick(_ sender: UIButton) {
        
        if state {
            state = false
            lblLabel.text = label
        }else{
            state = true
            lblLabel.text = "\(label) \(name)"
            
        }
    }
    
}

