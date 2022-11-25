//
//  DataModel.swift
//  week9_practice
//
//  Created by 고하영 on 2022/11/24.
//

import Foundation

struct DataModel: Codable {
    let response: Response
}

struct Response: Codable {
    let header: Header
    let body: Body
}

struct Header: Codable {
    let resultCode, resultMsg: String
}

struct Body: Codable {
    let items: Items
    let numOfRows, pageNo, totalCount: Int
}

struct Items: Codable {
    let item: [Item]
}

struct Item: Codable {
    let subwayRouteName, subwayStationId, subwayStationName: String
    
    enum CodingKeys: String, CodingKey {
        case subwayRouteName
        case subwayStationId = "subwayStationId"
        case subwayStationName
    }
}
