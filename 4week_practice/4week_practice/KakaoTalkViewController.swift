//
//  KakaoTalkViewController.swift
//  4week_practice
//
//  Created by 고하영 on 2022/10/27.
//

import UIKit

class KakaoTalkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 한 섹션 안에 들어갈 셀의 개수 -> 채팅방의 개수
        return chattingRoomData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return 테이블뷰에 넣을 셀
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "KakaoTalkTableViewCell", for: indexPath) as? KakaoTalkTableViewCell else {return UITableViewCell() }
        cell.nameLabel.text = chattingRoomData[indexPath.row].name
        cell.profileImageView.image = chattingRoomData[indexPath.row].profileImage
        cell.lastMessageLabel.text = chattingRoomData[indexPath.row].lastMessage
        cell.timeLabel.text = chattingRoomData[indexPath.row].time
        cell.messageCountLabel.text = chattingRoomData[indexPath.row].messageCount
        
        if let memberCount = chattingRoomData[indexPath.row].memberCount {
            cell.memberCountLabel.text = memberCount
        } else {
            cell.memberCountLabel.isHidden = true
        }
        
        return cell
    }
    
    @IBOutlet weak var kakaoTalkTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kakaoTalkTableView.delegate = self
        kakaoTalkTableView.dataSource = self

    }
    let chattingRoomData: [ChattingRoomDataModel] = [
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "ios",
        lastMessage: "send photo",
        memberCount: "200",
        time: "AM 1:05",
        messageCount: "61"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "spring",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: "6",
        time: "PM 10:20",
        messageCount: "23"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "spring",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: "6",
        time: "PM 10:20",
        messageCount: "15"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "spring",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: "6",
        time: "PM 10:20",
        messageCount: "11"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "spring",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: "6",
        time: "PM 10:20",
        messageCount: "3"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    ),
    ChattingRoomDataModel(
        profileImage: UIImage(named: "profileimage"),
        name: "alone",
        lastMessage: "내일까지 꼭 해와요",
        memberCount: nil,
        time: "PM 10:20",
        messageCount: "2"
    )]

}

struct ChattingRoomDataModel {
    let profileImage: UIImage?
    let name: String
    let lastMessage: String
    let memberCount: String?
    let time: String
    let messageCount: String
}

