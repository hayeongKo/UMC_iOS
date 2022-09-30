//
//  ViewController.swift
//  week2_hw
//
//  Created by 고하영 on 2022/09/26.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    @IBOutlet weak var bankView: UIView!
    @IBOutlet weak var moneyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setRadius()
    }
    
    func setRadius() {
        bankView.layer.cornerRadius = 20
        moneyView.layer.cornerRadius = 20
    }

    @IBAction func segueBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueShow", sender: self)
    }
    
    @IBAction func sendAction(_ sender: Any) {
    }
    
}

