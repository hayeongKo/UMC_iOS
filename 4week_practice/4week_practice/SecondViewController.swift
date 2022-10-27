//
//  SecondViewController.swift
//  4week_practice
//
//  Created by 고하영 on 2022/10/27.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    var delegate: labelChangeProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonDidTap(_ sender: Any) {
        guard let text = textField.text else {return}
        delegate?.onChange(text: text)
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
