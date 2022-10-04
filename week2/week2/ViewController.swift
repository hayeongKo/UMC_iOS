//
//  ViewController.swift
//  week2
//
//  Created by 고하영 on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {

    //속성
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var todayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func profileButtonDidtap(_ sender: Any) {
//        guard let presentedViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PresentedViewController") as? PresentedViewController else {return}
//
//        present(presentedViewController, animated: true)
        
        
        guard let pushedViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "PushedViewController") as? PushedViewController else {return}
        
        navigationController?
            .pushViewController(pushedViewController, animated: true)
        
    }
    
}

