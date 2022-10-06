//
//  ViewController.swift
//  week3_challenge
//
//  Created by 고하영 on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var expertView: UIView!
    open var shadowOffset: CGSize
    open var shadowOpacity: Float
    
    override func viewDidLoad() {
        super.viewDidLoad()
        expertView.layer.shadowOffset = CGSize(width: 20 , height: 15)
        expertView.layer.shadowOpacity = 0.5
        expertView.layer.shadowRadius = 0.5
    }



}

