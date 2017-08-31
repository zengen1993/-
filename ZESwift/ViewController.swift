//
//  ViewController.swift
//  ZESwift
//
//  Created by Apple on 2017/8/22.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit
let kTableViewCell = "TableViewCell"

class ViewController: UIViewController{
    
    let model = ["通知传值","闭包传值","协议传值"]
    fileprivate lazy var TableView : UITableView = {
        let TableView = UITableView()
        TableView.delegate = self
        TableView.dataSource = self
        TableView.frame = CGRect(x: 0, y: 0, width: kScreenwidth, height: kScreenheight)
        TableView.showsVerticalScrollIndicator = false
        TableView.separatorColor = UIColor.clear
        //  注册TableViewCell
        TableView.register(ZETableViewCell.self, forCellReuseIdentifier: kTableViewCell)
        return TableView
    }()
    override func viewDidLoad() {
        self.title="传值"
        self.view.addSubview(TableView)
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kTableViewCell, for: indexPath) as! ZETableViewCell
        cell.nameLabel.text = model[indexPath.row]
        return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = TZViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = BBViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = XYViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}

