//
//  POKRTimePeriodDetailViewController.swift
//  PersonalORK
//
//  Created by Xu Li on 2021/1/11.
//

import UIKit

class POKRTimePeriodDetailViewController: POKRBaseViewController {
    
    var periodModel: POKRTimePeriodModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //TODELETE:lixu
        self._mockData()
        
        self.title = self.periodModel?.title
    }
    
    func _mockData() -> Void {
        let testModel = POKRTimePeriodModel.init()
        testModel.title = "测试周期"
        testModel.desc = "请输入具体周期描述"
        testModel.startDate = NSDate.init(timeIntervalSince1970: 1683233243)
        testModel.endDate = NSDate.init(timeIntervalSince1970: 1683244444)
        self.periodModel = testModel
    }
}
