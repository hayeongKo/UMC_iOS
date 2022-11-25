//
//  ViewController.swift
//  week9_practice
//
//  Created by 고하영 on 2022/11/24.
//

import UIKit

class ViewController: UIViewController {
    let session = URLSession(configuration: .default)
    var urlComponents = URLComponents(string: "http://apis.data.go.kr/1613000/SubwayInfoService/getKwrdFndSubwaySttnList")!
    let subwayStationName = URLQueryItem(name: "subwayStationName", value: "강남")
    
    let serviceKeyString = "IfRniTtCM9CwGpgaDvdgCmLxQktXgytGfJcVSpIpl%2Fh%2FnFIPihYisuC5%2BGw8%2BpBZzqD7J8FbBBYiCOWydISSXw%3D%3D".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    var serviceKey:URLQueryItem {
        .init(name: "serviceKey", value: serviceKeyString)
    }
    let type = URLQueryItem(name: "_type", value: "json")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startNetworking()
        // Do any additional setup after loading the view.
    }
    
    func startNetworking() {
        let queryItems: [URLQueryItem] = [subwayStationName, serviceKey, type]
        urlComponents.queryItems = queryItems
        
        let requestURL = urlComponents.url!
        let dataTask = session.dataTask(with: requestURL) {data, response, error in
            let successRange = 200..<300
            guard error == nil,
                  let statusCode = (response as? HTTPURLResponse)?.statusCode,
                    successRange.contains(statusCode),
                  let resultData = data
            else {return}
            guard let dataModelResponse = try? JSONDecoder().decode(DataModel.self, from: resultData)
            else {self.startNetworking(); return}
            dataModelResponse.response.body.items.item.forEach { print($0) }
        }
        
        dataTask.resume()
    }


}

