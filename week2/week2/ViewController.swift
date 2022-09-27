//
//  ViewController.swift
//  week2
//
//  Created by 고하영 on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {

    //속성
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var todayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func profileButtonDidtap(_ sender: Any) {
        todayLabel.text = "button touch"
    }
    
}

