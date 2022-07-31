//
//  ViewController.swift
//  EmojiTest
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLabel: UILabel!
    @IBOutlet weak var lblEmoji: UILabel!
    
    var arrEmoji = ["😁","😇","😉","🤓","🧐","😅"]
    var currEmoji = ""
    var index = 0
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        lblLabel.text = arrEmoji[index]
         
        for i in arrEmoji{
            currEmoji += i
        }
        lblEmoji.text = currEmoji
    }

    @IBAction func btnIncrease(_ sender: UIButton) {
        index += 1
        if index >= arrEmoji.count{
            index = 0
        }
        lblLabel.text = arrEmoji[index]
    }
    @IBAction func btnMinus(_ sender: UIButton) {
        if index == 0{
            index = arrEmoji.count-1
        }else{
            index -= 1
        }
        lblLabel.text = arrEmoji[index]
    }
    
}

