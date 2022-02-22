//
//  apiFile.swift
//  mvvmPattern
//
//  Created by Rupali Rajput on 22/02/22.
//

import Foundation



class ApiService{
    
    func apiToGetTheData( complete: @escaping (_ success: Bool, _ data: [Data]? )->() ){
            DispatchQueue.global().async {
                sleep(2)
                var dummyData: [Data] = [Data]()
                for i in 0...100{
                    dummyData.append(Data(title: "This is a title \(i)", subTitle: "This is a subtitle"))
                }
                complete(true, dummyData)
                // If server gives an error, use "complete(false, nil)"
            }
        }
//
//    private let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
//    func apiToGetTheData(completion: @escaping (User)->()){
//
//        URLSession.shared.dataTask(with: url!){ (data, response, error) in
//            if let data = data {
//                let jsonDecoder = JSONDecoder()
//                let userData = try? jsonDecoder.decode(User.self , from: data)
//                completion(userData!)
//            }
//        }.resume()
//    }
}
