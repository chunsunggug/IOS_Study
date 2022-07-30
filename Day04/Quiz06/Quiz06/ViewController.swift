//
//  ViewController.swift
//  Quiz06
//
//  Created by TJ on 2022/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var subImgView: UIImageView!
    
    var imageNames = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var imageIndex = 0
    var subImgIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImgFunc()
    }
        
    @IBAction func btnPrev(_ sender: UIButton) {
        imgViewMoveFunc(index: -1)
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        imgViewMoveFunc(index: 1)
    }
    
    func imgViewMoveFunc(index:Int){
        imageIndex += index
        subImgIndex += index
        if index > 0 {
            if(imageIndex >= imageNames.count){
                imageIndex = 0
            }
        }else {
            if(imageIndex < 0 ){
                imageIndex = imageNames.count-1
            }
        }
        
        if subImgIndex == imageNames.count{
            subImgIndex = 0
        }else if subImgIndex < 0{
            subImgIndex = imageNames.count - 1
        }
        displayImgFunc()
    }
    
    func displayImgFunc(){
        lblTitle.text  = imageNames[imageIndex]
        imgView.image = UIImage(named: imageNames[imageIndex])
        subImgView.image = UIImage(named: imageNames[subImgIndex])
    }
}

