//
//  SignUpViewController.swift
//  week7_practice
//
//  Created by 고하영 on 2022/11/08.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupButtonDidTap(_ sender: Any) {
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else {return}
        
        UserDefaults.standard.set(password, forKey: name)
        
        print("아이디: \(name) 비밀번호: \(password)")
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
