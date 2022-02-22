//
//  ViewModel.swift
//  mvvmPattern
//
//  Created by Rupali Rajput on 22/02/22.
//

import Foundation

protocol UserDelegate:AnyObject {
    func dataReceived(data: [Data])
}

class UserViewModel:NSObject{
    
    weak var userDelegate:UserDelegate?
    private var apiService:ApiService!
//    private(set) var userData:[Data]! {
//        didSet{
//            self.bindTheDataToView(userData)
//        }
//    }
    
//    var bindTheDataToView: ([Data])->()  = {_ in }
    
    override init() {
        super.init()
        apiService = ApiService()
        getTheDataFromApiService()
        
    }
    
    
    func getTheDataFromApiService(){
        apiService.apiToGetTheData{ status,userData in
//            print("\(String(describing: userData)) \(status)")
//            self.userData = userData
            self.userDelegate?.dataReceived(data: userData!)
        }
    }
}
