//
//  SecondViewController.swift
//  week4-standard&challenge
//
//  Created by 고하영 on 2022/10/27.
//

import UIKit
import Lottie

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let sections = ["고정된 메모", "어제"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0) {
            return memoRoomData.count
        } else {
            return memoRoomData2.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell", for: indexPath) as? MemoTableViewCell else {return UITableViewCell()}
        
        if (indexPath.section == 0) {
            cell.nameLabel.text = memoRoomData[indexPath.row].name
            cell.timeLabel.text = memoRoomData[indexPath.row].time
            cell.implementationLabel.text = memoRoomData[indexPath.row].implementation
        } else {
            cell.nameLabel.text = memoRoomData2[indexPath.row].name
            cell.timeLabel.text = memoRoomData2[indexPath.row].time
            cell.implementationLabel.text = memoRoomData2[indexPath.row].implementation
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            let delete = UIContextualAction(style: .normal, title: "Delete") { (UIContextualAction, UIView, success: @escaping (Bool) -> Void) in
                    print("Delete 클릭 됨")
                    success(true)
                }
                delete.backgroundColor = .systemRed
                
                return UISwipeActionsConfiguration(actions:[delete])
    }
    
    lazy var lottieView: AnimationView = {
        let animationView = AnimationView(name: "refreshIndicator")
        animationView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        let centerX = UIScreen.main.bounds.width / 2
        animationView.center = CGPoint(x: centerX, y: 40)
        animationView.contentMode = .scaleAspectFit
        animationView.stop()
        animationView.isHidden = true
        return animationView
    }()
    
    
    
    @IBOutlet weak var memoTableView: UITableView!
    
    let refreshControl = UIRefreshControl()
    
    func initRefreshControl() {
        refreshControl.addSubview(lottieView)
        refreshControl.tintColor = .clear
        refreshControl.addTarget(
            self,
            action: #selector(refreshTableView(refreshControl:)),
            for: .valueChanged
        )
        
       memoTableView.refreshControl = refreshControl
    }
    
    @objc func refreshTableView(refreshControl: UIRefreshControl) {
        print("새로고침 됨!!")
        lottieView.isHidden = false
        lottieView.play()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.lottieView.isHidden = true
            self.lottieView.stop()
            self.memoTableView.reloadData()
            refreshControl.endRefreshing()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memoTableView.delegate = self
        memoTableView.dataSource = self
        initRefreshControl()
    }
    
    let memoRoomData: [MemoRoomDataModel] = [
    MemoRoomDataModel(
        name: "배고팡",
        time: "2022.8.2",
        implementation: "오늘 저녁 닭강정"),
    MemoRoomDataModel(
        name: "오늘은",
        time: "2022.4.3",
        implementation: "오늘도 닭강정"),
    MemoRoomDataModel(
        name: "내일도 닭강정?",
        time: "2022.3.20",
        implementation: "oo"),
    MemoRoomDataModel(
        name: "내일도 닭강정?",
        time: "2022.3.20",
        implementation: "oo"),
    MemoRoomDataModel(
        name: "내일도 닭강정?",
        time: "2022.3.20",
        implementation: "oo"),
    ]
    
    let memoRoomData2: [MemoRoomDataModel] = [
    MemoRoomDataModel(
        name: "배고팡",
        time: "2022.8.2",
        implementation: "오늘 저녁 닭강정"),
    MemoRoomDataModel(
        name: "오늘은",
        time: "2022.4.3",
        implementation: "오늘도 닭강정"),
    MemoRoomDataModel(
        name: "내일도 닭강정?",
        time: "2022.3.20",
        implementation: "oo"),
    MemoRoomDataModel(
        name: "내일도 닭강정?",
        time: "2022.3.20",
        implementation: "oo"),
    MemoRoomDataModel(
        name: "내일도 닭강정?",
        time: "2022.3.20",
        implementation: "oo"),
    ]
    
    
}
struct MemoRoomDataModel {
    let name: String
    let time: String
    let implementation: String
}
