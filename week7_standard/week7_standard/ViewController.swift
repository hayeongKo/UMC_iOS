//
//  ViewController.swift
//  week7_standard
//
//  Created by 고하영 on 2022/11/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbPickerTime: UILabel!
    @IBOutlet weak var lbCurrentTime: UILabel!
    @IBOutlet weak var countTime: UILabel!
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    let count = 0
    var alarmTime: String?
    var mTime: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let time = "time"
        
        let formatter = DateFormatter()
        
        UserDefaults.standard.set(alarmTime, forKey: time)
        
        UserDefaults.standard.string(forKey: time)
        
        formatter.dateFormat = "hh:mm aaa"
        lbPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
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

