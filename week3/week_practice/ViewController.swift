//
//  ViewController.swift
//  week_practice
//
//  Created by 고하영 on 2022/10/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    

    @IBAction func buttonDidTap(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        
        guard let firstNumber = firstTextField.text else {return}
        guard let secondNumber = secondTextField.text else {return}
        
        let result = Int(firstNumber)! + Int(secondNumber)!
        
        nextViewController.result = String(result)
        //nextViewController.modalPresentationStyle = .fullScreen
        
        present(nextViewController, animated: true)
    }
    
    @IBAction func substractBtnDidTap(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        
        guard let firstNumber = firstTextField.text else {return}
        guard let secondNumber = secondTextField.text else {return}
        
        let result = Int(firstNumber)! - Int(secondNumber)!
        
        nextViewController.result = String(result)
        //nextViewController.modalPresentationStyle = .fullScreen
        
        present(nextViewController, animated: true)
    }
    @IBAction func multBtnDidTap(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        
        guard let firstNumber = firstTextField.text else {return}
        guard let secondNumber = secondTextField.text else {return}
        
        let result = Int(firstNumber)! * Int(secondNumber)!
        
        nextViewController.result = String(result)
        //nextViewController.modalPresentationStyle = .fullScreen
        
        present(nextViewController, animated: true)
    }
    @IBAction func divideBtnDipTap(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        
        guard let firstNumber = firstTextField.text else {return}
        guard let secondNumber = secondTextField.text else {return}
        
        let result = Int(firstNumber)! / Int(secondNumber)!
        
        nextViewController.result = String(result)
        //nextViewController.modalPresentationStyle = .fullScreen
        
        present(nextViewController, animated: true)
    }
}

