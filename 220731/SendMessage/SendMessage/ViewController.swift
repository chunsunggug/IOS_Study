//
//  ViewController.swift
//  SendMessage
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvSendList: UITextView!
    @IBOutlet weak var tfSendMsg: UITextField!
    
    @IBOutlet weak var btnEmoji1: UIButton!
    @IBOutlet weak var btnEmoji2: UIButton!
    @IBOutlet weak var btnEmoji3: UIButton!
    @IBOutlet weak var btnEmoji4: UIButton!
    @IBOutlet weak var btnEmoji5: UIButton!
    
    var emojiState = true
    
    var strSendMsg = ""
    var nilCheckNum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnEmoji1.setTitle("😁", for: UIControl.State.normal)
        btnEmoji2.setTitle("😆", for: UIControl.State.normal)
        btnEmoji3.setTitle("☺️", for: UIControl.State.normal)
        btnEmoji4.setTitle("😡", for: UIControl.State.normal)
        btnEmoji5.setTitle("🧐", for: UIControl.State.normal)
        
        emojiStateChange(state: emojiState)
        
    }

    @IBAction func btnSend(_ sender: UIButton) {
        
        nilCheckNum = nilCheck()
        
        if nilCheckNum == 1 {
           var strMsg =  msgAppend()
            tvSendList.text += strMsg
        }
        
        tfSendMsg.text = ""
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        
        if sender.titleLabel!.text!.count < 2{
            tfSendMsg.text! += (sender.titleLabel?.text)!
        }else{
            emojiState = !emojiState
            emojiStateChange(state: emojiState)
        }
        
    }
    func nilCheck () -> Int {
        strSendMsg = (tfSendMsg.text?.trimmingCharacters(in: .whitespacesAndNewlines))!
        if !strSendMsg.isEmpty {
            return 1
        }
        return 0
    }
    
    func emojiStateChange(state : Bool){
        btnEmoji1.layer.isHidden = emojiState
        btnEmoji2.layer.isHidden = emojiState
        btnEmoji3.layer.isHidden = emojiState
        btnEmoji4.layer.isHidden = emojiState
        btnEmoji5.layer.isHidden = emojiState
    }
    
    func msgAppend() -> String{
        return  strSendMsg+"\n"
    }
}

