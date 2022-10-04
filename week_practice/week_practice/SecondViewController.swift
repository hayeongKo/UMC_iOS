//
//  SecondViewController.swift
//  week_practice
//
//  Created by 고하영 on 2022/10/04.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var result = "default"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = result
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //resultLabal.text = result
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
