//
//  ViewController.swift
//  week6_practice
//
//  Created by 고하영 on 2022/10/31.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        threadTest()
    }
    
    var colorList : [UIColor] = [
        .blue,
        .black,
        .brown,
        .red,
        .gray,
        .green,
        .orange,
        .yellow,
        .cyan
    ]

    func threadTest() {
        DispatchQueue.global().async {
            for color in self.colorList {
                DispatchQueue.main.sync {
                    self.view1.backgroundColor = color;
                }
                sleep(1);
            }
        }
        
        DispatchQueue.global().async {
            for color in self.colorList {
                DispatchQueue.main.sync {
                    self.view2.backgroundColor = color;
                }
                sleep(1);
            }
        }
        
        //비동기 -> 다른 작업이 끝날때까지 기다리지 않음
        //-> 각각 스레드가 동시에
        //-> 모든 스레드가 끝나는 정확한 시간을 알 수 없음
        //동기 -> 다른 작업이 끝나고 실행
        //-> 한 스레드가 끝나고 다음 스레드가 실행

    }

}

