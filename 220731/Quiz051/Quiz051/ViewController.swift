//
//  ViewController.swift
//  Quiz051
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    var imgOn:UIImage?
    var imgOff:UIImage?
    let scale: CGFloat = 2
    var newWidth : CGFloat = 0
    var newHeight : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        imgView.image = imgOn
    }

    @IBAction func btnZoom(_ sender: UISwitch) {
        switch sender.isOn {
        case true :
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
        default :
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
        }
        print(newWidth,newHeight)
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
       
    }
    @IBAction func btnOnOff(_ sender: UISwitch) {
        switch sender.isOn {
        case true : imgView.image = imgOn
        default : imgView.image = imgOff
        }
    }
    @IBAction func btnChk(_ sender: Any) {
        newWidth = -50
        newHeight = 325
        print(newWidth,newHeight)
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
    }
    // 370.0 650.0
    // 185.0 325.0
    
}

