//
//  CheckViewController.swift
//  week3_challenge_R
//
//  Created by 고하영 on 2022/10/06.
//

import UIKit

class CheckViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var purposeLabel: UILabel!
    @IBOutlet weak var formLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var itvtitle: String?
    var department: String?
    var purpose: String?
    var form: String?
    var amount: String?
    var content: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        titleLabel.text = itvtitle
        //departmentLabel.text = department
        purposeLabel.text = purpose
        //formLabel.text = form
        amountLabel.text = amount
        contentLabel.text = content
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
