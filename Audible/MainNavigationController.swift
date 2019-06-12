//
//  MainNavigationController.swift
//  Audible
//
//  Created by Salvador Mireles on 2/25/19.
//  Copyright © 2019 antonio macias. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        
        if isLoggedIn() {
            
            let homeController = HomeController()
            viewControllers = [homeController]
            
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
                
            
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
    return false 
        
    }
    
    @objc func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated:  true, completion: {
    })
  }
}

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're logged in"
        
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}
