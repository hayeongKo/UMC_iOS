//
//  ViewController.swift
//  week6_practice_1
//
//  Created by 고하영 on 2022/11/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countTime: UILabel!
    @IBOutlet weak var lbCurrentTime: UILabel!
    @IBOutlet weak var lbPickerTime: UILabel!
    
    let timeSeletor: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String?
    var mTime: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSeletor, userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "hh:mm aaa"
        lbPickerTime.text = "선택시간:" + formatter.string(from: datePickerView.date)
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        lbCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        let currentTime = formatter.string(from: date as Date)
        
        if(alarmTime == currentTime) {
            view.backgroundColor = UIColor.gray
        } else {
            view.backgroundColor = UIColor.white
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 600) {
            self.view.backgroundColor = UIColor.white
        }
    }
    

}

