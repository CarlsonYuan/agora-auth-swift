//
//  ViewController.swift
//  agora-auth-swift
//
//  Created by Carlson Yuan on 2023/8/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ChatTokenBuilder.buildUserToken(withUserID: "test_user_1")
        ChatTokenBuilder.buildAppToken()
        // Do any additional setup after loading the view.
    }


}

