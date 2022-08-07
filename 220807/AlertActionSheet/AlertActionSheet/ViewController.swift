//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnAlert(_ sender: UIButton) {
        // UIAlertController 초기화
        let testAlert = UIAlertController(title: "TITLE", message: "message", preferredStyle: .alert)
     
        
        // UIAlertController에 UIAlertAction 설정
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil )
        
        // UIAlertController에 UIAlertAction 추가
        testAlert.addAction(actionDefault)
        
        // UIAlertController에 UIAlertAction 설정
        var actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive , handler: {ACTION in
            print("destructive Action Called")
        })
        // UIAlertController에 UIAlertAction 추가
        testAlert.addAction(actionDestructive)
        
        var actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: {ACTION in
            print("cancel")
        })
        
        
        testAlert.addAction(actionCancel)
        // completion의 모양이 클로저
        present(testAlert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        
    }
    
    
    
} // ViewController

