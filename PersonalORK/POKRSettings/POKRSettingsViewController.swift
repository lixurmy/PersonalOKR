//
//  POKRSettingsViewController.swift
//  PersonalORK
//
//  Created by Xu Li on 2021/2/1.
//

import UIKit

let kPOKRSettingsCellReuseId = "kPOKRSettingsCellReuseId"

class POKRSettingsViewController: POKRBaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView?
    var headerView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "设置"
        self.navigationController?.setNavigationBarHidden(true, animated: false);
        let tableView = UITableView.init(frame: self.view.bounds, style: UITableView.Style.grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(POKRSettingsTableViewCell.self, forCellReuseIdentifier: kPOKRSettingsCellReuseId)
        self.tableView = tableView
        self.view.addSubview(tableView)
        
        self.headerView = UIView.init()
        self.headerView?.backgroundColor = UIColor.yellow
    }
    
    //UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        cell = tableView.dequeueReusableCell(withIdentifier: kPOKRSettingsCellReuseId)
        
        return cell ?? POKRSettingsTableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: kPOKRSettingsCellReuseId)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return section == 0 ? self.headerView : nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 200.0 : 0.0
    }
    
    //UITableViewDelegate
}
