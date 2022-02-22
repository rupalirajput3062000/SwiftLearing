//
//  ViewController.swift
//  mvvmPattern
//
//  Created by Rupali Rajput on 22/02/22.
//

import UIKit

class ViewController: UIViewController, UserDelegate {
    
    
    
    var label: UILabel = {
       let label = UILabel(frame: CGRect(x: 20, y: 50, width: 300, height: 300))
        label.numberOfLines = 0
        return label
    }()
    
    
    private var userViewModel: UserViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callTheViewUpdate()
        userViewModel.userDelegate = self
        view.addSubview(label)
        view.backgroundColor = .systemPink
    }

    func callTheViewUpdate(){
        self.userViewModel = UserViewModel()
//        self.userViewModel.bindTheDataToView = { data in
//            DispatchQueue.main.async {
//                self.label.text = data[0].title
//            }
//            print("Called from View Model")
//        }
        
        
    }
    
    func dataReceived(data: [Data]) {
        print(data[0].title)
    }

}

