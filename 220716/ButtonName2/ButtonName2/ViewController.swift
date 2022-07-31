//
//  ViewController.swift
//  ButtonName2
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 이곳에서 초기화할 수 있음.
    }

    @IBAction func btnSmile(_ sender: UIButton) {
        var labelEmoji = label.text
        print(labelEmoji!)
        labelEmoji! += "😁"
        label.text! = labelEmoji!
        //label.text!.append("😁");
        
        
    }
    
}

