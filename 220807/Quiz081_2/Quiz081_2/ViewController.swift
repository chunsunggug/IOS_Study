//
//  ViewController.swift
//  Quiz081_2
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitleUp: UILabel!
    @IBOutlet weak var lblTitleDown: UILabel!
    @IBOutlet weak var ivUp: UIImageView!
    @IBOutlet weak var ivDown: UIImageView!
    
    let interval = 1.0 // 1초 사용
    let timeSelector : Selector = #selector(ViewController.updateTime)
    var numImageUp = 0
    var numImageDown = 0
    var imageNames = ["flower_01.png","flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var count = 0 // 3초인 경우 사용
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        ivUp.image = UIImage(named: imageNames[numImageUp])
        lblTitleUp.text = imageNames[numImageUp]
        
        ivDown.image = UIImage(named: imageNames[numImageDown])
        lblTitleDown.text = imageNames[numImageDown]
    }

    @objc func updateTime(){
        upImageTitle()
        downImageTitle()
    }
    
    func upImageTitle(){
        numImageUp += 1
        if numImageUp >= imageNames.count {
            numImageUp = 0
        }
        ivUp.image = UIImage(named: imageNames[numImageUp])
        lblTitleUp.text = imageNames[numImageUp]
        
    }
    func downImageTitle(){
        count += 1
        if ( count % 3 == 0 ){
            numImageDown += 1
            if (numImageDown >= imageNames.count){
                numImageDown = 0
            }
            
            ivDown.image = UIImage(named: imageNames[numImageDown])
            lblTitleDown.text = imageNames[numImageDown]
        }
    }
}

