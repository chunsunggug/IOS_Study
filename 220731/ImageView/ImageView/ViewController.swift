//
//  ViewController.swift
//  ImageView
//
//  Created by TJ on 2022/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    var imgOn: UIImage? // 켜진 전구 이미지
    var imgOff: UIImage? // 꺼진 전구 이미지
    
    var isZoom = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이미지 파일 연결
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        // imageView에 이미지 할당
        imageView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        // 이미지 크기를 2배로 변경
        let scale: CGFloat = 2.0
        var newWidth : CGFloat = 0
        var newHeight : CGFloat = 0
        
        
        if isZoom {
            newWidth = imageView.frame.width / scale
            newHeight = imageView.frame.height / scale
            btnResize.setTitle("이미지 확대", for: .normal)
        } else {
            newWidth = imageView.frame.width * scale
            newHeight = imageView.frame.height * scale
            btnResize.setTitle("이미지 축소", for: .normal)
        }
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            imageView.image = imgOn
        default:
            imageView.image = imgOff
        }
    }
    
} // ViewController

