//
//  ViewController.swift
//  Quiz08
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var ivMain: UIImageView!
    
    var imgNames = ["flower_01.png","flower_02.png"]
    
    var currnetImage: UIImage?
    
    var count = 0
    
    let interval = 0.5 //0.5초 간격 반복
    let timeSelector:Selector = #selector(ViewController.updateTime)
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        displayImage()
    }

    
    @objc func updateTime (){
        if(count == imgNames.count-1){
            count = 0
        }else{
            count += 1
        }
        displayImage()
    }
    
    func displayImage(){
        currnetImage = UIImage(named: imgNames[count])
        lblTitle.text = imgNames[count]
        ivMain.image = currnetImage
    }

}

