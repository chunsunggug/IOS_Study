//
//  ViewController.swift
//  Quiz09
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var textView: UITextView!
    var gugudan = [2,3,4,5,6,7,8,9]
    
    var dan = [Int](2...9)
    let pickerViewColumn = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        pickerView.dataSource = self
//        pickerView.delegate = self
//
//        var strGugudan = ""
//        for i in 1...9 {
//            strGugudan += "\(2) * \(i) = \(2 * i) \n"
//        }
//
//        textView.text = strGugudan
//        lblTitle.text = String(2)+"단"
        
        lblTitle.text = "\(dan[0]) 단"
        calcDan(dan: dan[0])
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }
    
    func calcDan (dan:Int){
        textView.text = ""
        for i in 1...9 {
            textView.text += "\(dan) X \(i) = \(dan * i) \n"
        }
    }


}

extension ViewController:UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dan.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerViewColumn
    }
    
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        // 컬럼 1개
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        // 컬럼 안의 데이터 구구단 갯수
//        return gugudan.count
//    }


    
}

extension ViewController:UIPickerViewDelegate{
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return String(gugudan[row])+"단"
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        var strGugudan = ""
//        for i in 1...9 {
//            strGugudan += "\(gugudan[row]) * \(i) = \(gugudan[row] * i) \n"
//        }
//        textView.text = strGugudan
//        lblTitle.text = String(gugudan[row])+"단"
//    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(dan[row]) 단"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblTitle.text = "\(dan[row]) 단"
        calcDan(dan: dan[row])
    }
}


