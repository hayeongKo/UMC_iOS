//
//  ApplyViewController.swift
//  week3_challenge_R
//
//  Created by 고하영 on 2022/10/06.
//

import UIKit

class ApplyViewController: UIViewController {

    @IBOutlet weak var formBtn: UIButton!
    @IBOutlet weak var itvcontentTextView: UITextView!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var purposeTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let faceToFace = UIAction(title: "대면", handler: {_ in print("대면")})
        let putInWriting = UIAction(title: "서면", handler: {_ in print("서면")})
        let calling = UIAction(title: "전화", handler: {_ in print("전화")})

        let buttonMenu = UIMenu(title: "인터뷰 방식", children: [faceToFace, putInWriting, calling])
        
        formBtn.menu = buttonMenu
        formBtn.changesSelectionAsPrimaryAction = true
        
        itvcontentTextView.layer.borderColor = UIColor.gray.cgColor
        itvcontentTextView.layer.borderWidth = 0.2
        itvcontentTextView.layer.cornerRadius = 5
    }
    
    @IBAction func submitBtnDidTap(_ sender: Any) {
        guard let checkViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CheckViewController") as? CheckViewController else {return}
        
        guard let title = titleTextField.text else {return}
        guard let purpose = purposeTextField.text else {return}
        guard let amount = amountTextField.text else {return}
        //guard let form = formBtn.menu?.selectedElements else {return}
        guard let content = itvcontentTextView.text else {return}
        
        //print(form)
        checkViewController.itvtitle = String(title)
        checkViewController.purpose = String(purpose)
        checkViewController.amount = String(amount)
        checkViewController.content = String(content)
        //checkViewController.form = String(form)
        
        navigationController?.pushViewController(checkViewController, animated: true)
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
