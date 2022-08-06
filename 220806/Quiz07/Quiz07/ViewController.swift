//
//  ViewController.swift
//  Quiz07
//
//  Created by TJ on 2022/08/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0 //1초 간격 반복
    let timeSelector:Selector = #selector(ViewController.updateTime)

    var count = 0 // 파란색, 빨간색
    var alramTime:String?
    
    var currentTime:Date?
    var chooseTime:Date?
    var useTime:Double?
    
    @IBOutlet var allView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        //allView.backgroundColor = UIColor.red
    }
    
    // Async Task로 1초당 1번씩 구동
    @objc func updateTime (){
        count += 1
        // NS = NextStep의 약자로
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
        
        currentTime = date as Date
        
        formatter.dateFormat = "a hh:mm"
        let currentTime2 = formatter.string(from: date as Date)
        
        
        if alramTime != nil && alramTime! == currentTime2 {
            if count % 2 == 0 {
                allView.backgroundColor = UIColor.red
            }else{
                allView.backgroundColor = UIColor.blue
            }
        }else{
            allView.backgroundColor = UIColor.white
        }
        
    }
    
    
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let datePickerView = sender
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        lblPickerTime.text = "선택시간 : \(dateFormat.string(from: datePickerView.date as Date))"
        
        
        
        chooseTime =  datePickerView.date as Date
        
             
        useTime = Double(currentTime!.timeIntervalSince(chooseTime!))
        
        dateFormat.dateFormat = "a hh:mm"
        alramTime = dateFormat.string(from: datePickerView.date)
        
    }
    
}

