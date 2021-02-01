//
//  POKRTimePeriodModel.swift
//  PersonalORK
//
//  Created by Xu Li on 2021/1/11.
//

import UIKit

class POKRTimePeriodModel: POKRBaseModel {
    
    var title: String?
    var desc: String?
    
    var startDate: NSDate?
    var endDate: NSDate?
    
    func progress() -> Double {
        if startDate == nil || endDate == nil {
            return 0
        }
        
        let total = endDate!.timeIntervalSince1970 - startDate!.timeIntervalSince1970
        let current = NSDate.now.timeIntervalSince1970 - startDate!.timeIntervalSince1970
        if total == 0 {
            return 1
        }
        return current/total
    }
}
