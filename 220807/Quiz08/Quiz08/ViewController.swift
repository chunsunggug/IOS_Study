//
//  ViewController.swift
//  Quiz08
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var intervalTime = 3.0
    
    var imageNames = ["flower_01.png","flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var numImage = 0
    
    let imageSelector:Selector = #selector(changeImage)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: intervalTime, target: self, selector: imageSelector, userInfo: nil, repeats: true)
        
        imgView.image = UIImage(named: imageNames[numImage] )
        
        lblTitle.text = imageNames[numImage]
        
    }

    @objc func changeImage(){
        numImage += 1
        if numImage >= imageNames.count {
            numImage = 0
        }
        
        imgView.image = UIImage(named: imageNames[numImage] )
        
        lblTitle.text = imageNames[numImage]
        
    }

}

