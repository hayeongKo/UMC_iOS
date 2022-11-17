//
//  SecondViewController.swift
//  week8_standard
//
//  Created by 고하영 on 2022/11/17.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var searchTextFieldHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet var searchTextFieldTapGestureRecognizer: UITapGestureRecognizer!
    let sections = ["고정된 메모", "어제"]
    var flag = false
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return memoRoomData.count
        } else {
            return memoRoomData2.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:"MemoTableViewCell", for: indexPath) as? MemoTableViewCell else {return UITableViewCell()}
        
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        memoTableView.delegate = self
        memoTableView.dataSource = self
        initRefreshControl()
        searchTextFieldTapGestureRecognizer.addTarget(self, action: #selector(searchTextFieldDidTap))
    }
    
    @objc func searchTextFieldDidTap() {
        if !flag {
            UIView.animate(
                withDuration: 3,
                animations: {
                    self.searchTextFieldHeightConstraint.constant = 100
                    self.view.layoutIfNeeded()
                },
                completion: { _ in
                    self.flag = true
                }
            )
        } else {
            UIView.animate(
                withDuration: 3,
                animations: {
                    self.searchTextFieldHeightConstraint.constant = 30
                    self.view.layoutIfNeeded()
                },
                completion: { _ in
                    self.flag = false
                }
            )
        }
        
    }
    @IBOutlet weak var memoTableView: UITableView!
    
    func initRefreshControl() {
        memoTableView.refreshControl = UIRefreshControl()
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
    
    struct MemoRoomDataModel {
        let name: String
        let time: String
        let implementation: String
    }

    
}
