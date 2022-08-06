//
//  ViewController.swift
//  DatePicker
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0 //1초 간격 반복
    let timeSelector:Selector = #selector(ViewController.updateTime)
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // interval = 간격 , target = ViewController , repeats = 반복여부 , selector = 정의한 함수 실행
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        lblPickerTime.text = "선택시간 : \(dateFormat.string(from: datePickerView.date as Date))"
        
        //= "yyyy-MM-dd HH:mm:ss EEE"
        
        
    }
    
    // Async Task로 1초당 1번씩 구동
    @objc func updateTime (){
        // NS = NextStep의 약자로
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
        
    }
    
}//ViewController

