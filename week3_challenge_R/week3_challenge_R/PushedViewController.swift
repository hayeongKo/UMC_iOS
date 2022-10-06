//
//  PushedViewController.swift
//  week3_challenge_R
//
//  Created by 고하영 on 2022/10/06.
//

import UIKit

class PushedViewController: UIViewController {
    
    open var shadowOffset : CGSize?
    open var shadowOpacity: Float?

    @IBOutlet weak var politicSocietyView: UIView!
    @IBOutlet weak var economyView: UIView!
    @IBOutlet weak var eduView: UIView!
    @IBOutlet weak var cultureView: UIView!
    @IBOutlet weak var healthView: UIView!
    @IBOutlet weak var lawView: UIView!
    @IBOutlet weak var etcView: UIView!
    @IBOutlet weak var scienceView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewValue(view: politicSocietyView)
        setViewShadow(view: politicSocietyView)
        setViewValue(view: economyView)
        setViewShadow(view: economyView)
        setViewValue(view: eduView)
        setViewShadow(view: eduView)
        setViewValue(view: cultureView)
        setViewShadow(view: cultureView)
        setViewValue(view: healthView)
        setViewShadow(view: healthView)
        setViewValue(view: lawView)
        setViewShadow(view: lawView)
        setViewValue(view: etcView)
        setViewShadow(view: etcView)
        setViewValue(view: scienceView)
        setViewShadow(view: scienceView)
    }
    
    func setViewShadow(view : UIView) {
        view.layer.shadowOpacity = 0.1
        view.layer.shadowRadius = 10
    }
    
    func setViewValue(view : UIView) {
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.borderWidth = 0.2
        view.layer.cornerRadius = 10
    }
    
    @IBAction func societyBtnDidTap(_ sender: Any) {
        guard let applyViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "ApplyViewController") as?
                ApplyViewController else {return}
        
        navigationController?.pushViewController(applyViewController, animated: true)
    }
    
}
