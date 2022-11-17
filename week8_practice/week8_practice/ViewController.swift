//
//  ViewController.swift
//  week8_practice
//
//  Created by 고하영 on 2022/11/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var orangeViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var orangeViewTopConstraint: NSLayoutConstraint!
    var flag = false
    
    @IBOutlet var orangeViewTapGestureRecognizer: UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeViewTapGestureRecognizer.addTarget(self, action: #selector(orangeViewDidTap))
    }
    
    @objc func orangeViewDidTap() {
        if !flag {
            UIView.animate(
                withDuration: 3,
                animations: {
                    self.orangeViewTopConstraint.constant = 50
                    self.orangeViewHeightConstraint.constant = 500
                    self.view.layoutIfNeeded()
                },
                completion: { _ in
                    self.flag = true
                }
            )
        } else {
            UIView.animate(
                withDuration: 3,
                animations: {
                    self.orangeViewTopConstraint.constant = 199
                    self.orangeViewHeightConstraint.constant = 128
                    self.view.layoutIfNeeded()
                },
                completion: { _ in
                    self.flag = false
                }
            )
        }
        
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        UIView.animate(
            withDuration: 3,
            animations: {
                self.orangeViewTopConstraint.constant = 50
                self.orangeViewHeightConstraint.constant = 500
                self.view.layoutIfNeeded()
            }
        )
    }
}

