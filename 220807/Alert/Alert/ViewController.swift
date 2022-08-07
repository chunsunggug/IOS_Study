//
//  ViewController.swift
//  Alert
//
//  Created by TJ on 2022/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var lampNames = ["lamp_on.png","lamp_off.png","lamp_remove.png"]
    
    var alertController: UIAlertController?
    
    var state = 0 // 0 on 1 off 2 remove
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: lampNames[state])
    }

    @IBAction func btnOn(_ sender: UIButton) {
        
        if state == 0 {
            alertController = UIAlertController(title: "경고", message: "현재 On상태 입니다.", preferredStyle: .alert)
        
            var actionDefault = UIAlertAction(title: "네 알겠습니다.", style: .default, handler: nil )
            
            alertController!.addAction(actionDefault)
         
        }else {
            alertController = UIAlertController(title: "램프 켜기", message: "램프를 켜시겠습니까?", preferredStyle: .alert)
            var actionDefault = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.state = 0
                self.imgView.image = UIImage(named: self.lampNames[self.state])
            })
            
            alertController!.addAction(actionDefault)
            
            actionDefault = UIAlertAction(title: "아니오", style: .default, handler: nil )
            
            alertController!.addAction(actionDefault)
            
        }
        present(alertController!, animated: true, completion: nil)
        
    }
    @IBAction func btnOff(_ sender: UIButton) {
        
            
            if state == 1 {
                alertController = UIAlertController(title: "경고", message: "현재 Off상태 입니다.", preferredStyle: .alert)
            
                var actionDefault = UIAlertAction(title: "네 알겠습니다.", style: .default, handler: nil )
                
                alertController!.addAction(actionDefault)
             
            }else {
                alertController = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: .alert)
                var actionDefault = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                    self.state = 1
                    self.imgView.image = UIImage(named: self.lampNames[self.state])
                })
                
                alertController!.addAction(actionDefault)
                
                actionDefault = UIAlertAction(title: "아니오", style: .default, handler: nil )
                
                alertController!.addAction(actionDefault)
                
            }
            present(alertController!, animated: true, completion: nil)
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        
        
        if state == 2 {
            alertController = UIAlertController(title: "경고", message: "현재 전구는 제거된 상태 입니다.", preferredStyle: .alert)
        
            var actionDefault = UIAlertAction(title: "네 알겠습니다.", style: .default, handler: nil )
            
            alertController!.addAction(actionDefault)
         
        }else {
            alertController = UIAlertController(title: "램프 제거?", message: "램프를 제거할까요?", preferredStyle: .alert)
            
            var actionDefault = UIAlertAction(title: "아니오, 끕니다.", style: .default, handler: {ACTION in
                self.state = 1
                self.imgView.image = UIImage(named: self.lampNames[self.state])
            })
            
            alertController!.addAction(actionDefault)
            
            
            actionDefault = UIAlertAction(title: "아니오, 켭니다.", style: .default, handler: {ACTION in
                self.state = 0
                self.imgView.image = UIImage(named: self.lampNames[self.state])
            })
            
            alertController!.addAction(actionDefault)
            
            
            actionDefault = UIAlertAction(title: "네 제거합니다.", style: .default, handler: {ACTION in
                self.state = 2
                self.imgView.image = UIImage(named: self.lampNames[self.state])
            })
            
            alertController!.addAction(actionDefault)
            
        }
        present(alertController!, animated: true, completion: nil)
        
    }
}// ViewController

