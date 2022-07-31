//
//  ViewController.swift
//  ButtonName3
//
//  Created by TJ on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "😁"
    }

    @IBAction func btnHappy(_ sender: UIButton) {
        label.text! += "😁"
        //label.text?.appen("😁")
    }
    
    @IBAction func btnMelong(_ sender: UIButton) {
        label.text! += "😝"
        //label.text?.appen("😝")
    }
    @IBAction func btnAngry(_ sender: UIButton) {
        label.text! += "😡"
        //label.text?.appen("😡")
    }
    @IBAction func btnBig(_ sender: UIButton) {
        label.font = UIFont.systemFont(ofSize: 60)
    }
    @IBAction func btnSmall(_ sender: UIButton) {
        label.font = UIFont.systemFont(ofSize: 20)
    }
    @IBAction func btnRemove(_ sender: Any) {
        label.text?.remove(at:String.Index(encodedOffset: 0))
        //label.text.
    }
} // ViewController

