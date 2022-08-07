//
//  ViewController.swift
//  Quiz081
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblTop: UILabel!
    @IBOutlet weak var lblBottom: UILabel!
    
    
    @IBOutlet weak var imgTopView: UIImageView!
    @IBOutlet weak var imgBottomView: UIImageView!
    
    var state = true
    var imageNames = ["flower_01.png","flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var topTimeInterval = 1.0
    var bottomTimeInterval = 3.0
    var topImgCount = 0
    var bottomImgCount = 0
    
    let topImageSelector:Selector = #selector(topChangeImage)
    let bottomImageSelector:Selector = #selector(bottomChangeImage)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: topTimeInterval, target: self, selector: topImageSelector, userInfo: nil, repeats: true)
        
        Timer.scheduledTimer(timeInterval: bottomTimeInterval, target: self, selector: bottomImageSelector, userInfo: nil, repeats: true)
        
        
        imgTopView.image = UIImage(named: imageNames[topImgCount] )
        imgBottomView.image = UIImage(named: imageNames[bottomImgCount] )

        lblTop.text = imageNames[topImgCount]
        lblBottom.text = imageNames[bottomImgCount]
        
    }

    @IBAction func btnModal(_ sender: UIButton) {
        state = !state
        print(state)
    }
    
    @objc func topChangeImage(){
            topImgCount += 1
            if topImgCount >= imageNames.count {
                topImgCount = 0
            }
    displayImage(imgTopView,lblTop,topImgCount)
    }
    @objc func bottomChangeImage(){
            bottomImgCount += 1
            if bottomImgCount >= imageNames.count {
                bottomImgCount = 0
            }
            
        displayImage(imgBottomView,lblBottom,bottomImgCount)

    }
    
    func displayImage(_ imgView:UIImageView,_ lblTitle:UILabel,_ count : Int){
        if state {
            imgView.image = UIImage(named: imageNames[count])
            lblTitle.text = imageNames[count]
            
        }
        
    }
}

