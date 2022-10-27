//
//  SecondViewController.swift
//  week4-standard&challenge
//
//  Created by 고하영 on 2022/10/27.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoRoomData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell", for: indexPath) as? MemoTableViewCell else {return UITableViewCell()}
        cell.nameLabel.text = memoRoomData[indexPath.row].name
        cell.timeLabel.text = memoRoomData[indexPath.row].time
        cell.implementationLabel.text = memoRoomData[indexPath.row].implementation
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
    
    
    @IBOutlet weak var memoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memoTableView.delegate = self
        memoTableView.dataSource = self
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
    
}
struct MemoRoomDataModel {
    let name: String
    let time: String
    let implementation: String
}
