//
//  ViewController.swift
//  Quiz061
//
//  Created by TJ on 2022/07/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    
    @IBOutlet weak var imgViewMain: UIImageView!
    @IBOutlet weak var imgViewSub: UIImageView!
    
    var imageNames = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png",]
    
    var numMainImage = 0
    var numSubImage = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage()
    }
    @IBAction func btnLeft(_ sender: UIButton) {
        numMainImage -= 1
        numSubImage -= 1
        
        if numMainImage < 0 {
            numMainImage = imageNames.count - 1
        }
        if numSubImage < 0 {
            numSubImage = imageNames.count - 1
        }
        displayImage()
    }
    @IBAction func btnRigth(_ sender: UIButton) {
        numMainImage += 1
        numSubImage += 1
        
        if numMainImage >= imageNames.count{
            numMainImage = 0
        }
        
        if numSubImage >= imageNames.count{
            numSubImage = 0
        }
        
        displayImage()
        
    }
    func displayImage(){
        imgTitle.text = imageNames[numMainImage]
        imgViewMain.image = UIImage(named: imageNames[numMainImage]) // Main Image
        imgViewSub.image = UIImage(named: imageNames[numSubImage]) // Sub Image
        
    }

}//ViewController

