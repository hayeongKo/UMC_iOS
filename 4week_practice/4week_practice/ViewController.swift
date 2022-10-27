//
//  ViewController.swift
//  4week_practice
//
//  Created by 고하영 on 2022/10/27.
//

import UIKit

protocol labelChangeProtocol {
    func onChange(text: String)
}

class ViewController: UIViewController, labelChangeProtocol {
    func onChange(text: String) {
        label.text = text
    }
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        guard let SecondViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        present(SecondViewController, animated: true)
        SecondViewController.delegate = self
        SecondViewController.modalPresentationStyle = .fullScreen
    }
    
}

