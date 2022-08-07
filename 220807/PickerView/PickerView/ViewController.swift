//
//  ViewController.swift
//  PickerView
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageFileNames = ["w1.jpg","w2.jpg","w3.jpg","w4.jpg","w5.jpg","w6.jpg","w7.jpg","w8.jpg","w9.jpg","w10.jpg"]
    let PickerViewColunm = 1 // PickerView 컬럼 갯수 (=카테고리 갯수)
    var imageArray = [UIImage?]()
    var imgNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<imageFileNames.count {
            let image = UIImage(named: imageFileNames[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileNames[imgNum]
        imageView.image = imageArray[imgNum]
        
        pickerImage.dataSource = self //(self = viewcontroller)
        pickerImage.delegate = self
    }


} // ViewController

extension ViewController:UIPickerViewDataSource {
    // pickerview의 컬럼 갯수 정의
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PickerViewColunm
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileNames.count
    }
}

extension ViewController:UIPickerViewDelegate {
    // Picker View에 파일명 보이기
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileNames[row]
    }
    
    // Picker View Thumbnail 배치 (viewForRow)
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        //let imageThumbnail = imageArray[row]
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 20)
        return imageView
    }
    
    
    //picker view Event 발생 선택된 파일명을 레이블 및 이미지 뷰에 출력 (didSelectRow)
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileNames[row]
        imageView.image = imageArray[row]
    }
}
