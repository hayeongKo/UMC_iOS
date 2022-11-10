//
//  ViewController.swift
//  week7_practice
//
//  Created by 고하영 on 2022/11/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonDidTap(_ sender: Any) {
        guard let name = nameTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        if UserDefaults.standard.string(forKey: name) == nil {
            print("데이터가 없습니다.")
        } else if password != UserDefaults.standard.string(forKey: name) {
            print("비밀번호가 알맞지 않습니다.")
        } else {
            print("로그인 성공!")
        }
    }
    
    @IBAction func signupButtonDidTap(_ sender: Any) {
        guard let signupViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else {return}
        
        navigationController?.pushViewController(signupViewController, animated: true)
    }
}

