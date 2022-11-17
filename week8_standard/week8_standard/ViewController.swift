//
//  ViewController.swift
//  week8_standard
//
//  Created by 고하영 on 2022/11/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnDidTap(_ sender: Any) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        
        present(secondViewController, animated: true)
        secondViewController.modalPresentationStyle = .fullScreen
    }
}

