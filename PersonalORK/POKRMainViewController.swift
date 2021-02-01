//
//  ViewController.swift
//  PersonalORK
//
//  Created by Xu Li on 2021/1/9.
//

import UIKit

class POKRMainViewController: POKRBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.yellow
        
        self.view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action:#selector(tapGRAction)))
        self.title = "主页"
    }

    @objc func tapGRAction() -> Void {
        let settingsVC = POKRSettingsViewController.init()
        self.navigationController?.pushViewController(settingsVC, animated: true)
    }

}

