//
//  ViewController.swift
//  week3_challenge_R
//
//  Created by 고하영 on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var expertView: UIView!
    @IBOutlet weak var reporterView: UIView!
    
    open var shadowOffset : CGSize?
    open var shadowOpacity: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //expertView.layer.shadowOffset = CGSize(width: 20, height: 15)
        expertView.layer.shadowOpacity = 0.1
        expertView.layer.shadowRadius = 10
        expertView.layer.cornerRadius = 10
        expertView.layer.borderColor = UIColor.gray.cgColor
        expertView.layer.borderWidth = 0.2
        
        //reporterView.layer.shadowOffset = CGSize(width: 20, height: 15)
        reporterView.layer.shadowOpacity = 0.1
        reporterView.layer.shadowRadius = 10
        reporterView.layer.cornerRadius = 10
        expertView.layer.borderColor = UIColor.gray.cgColor
        expertView.layer.borderWidth = 0.2
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reporterBtn(_ sender: Any) {
        guard let reporterViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PushedViewController") as? PushedViewController else {return}
        
        //present(reporterViewController, animated: true)
        //reporterViewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(reporterViewController, animated: true)
    }
    
}

