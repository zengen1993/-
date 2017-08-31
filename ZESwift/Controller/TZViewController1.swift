//
//  TZViewController1.swift
//  ZESwift
//
//  Created by Apple on 2017/8/23.
//  Copyright © 2017年 Apple. All rights reserved.
//  通知传值

import UIKit

class TZViewController1: UIViewController {
    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "传值"
        self.view.backgroundColor = UIColor.white
        configureUI()
        print("发送通知")
        let notificationName = Notification.Name(rawValue: "DownloadImageNotification")
        let dic = ["name": "zengen","age": "24"]
        // 发送通知
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: dic)
    }
    func configureUI(){
        btn.frame = CGRect(x: 100, y: 300, width: kScreenwidth - 200, height: 44)
        btn.setTitle("确定", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: Selector("BtnClick"), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    func BtnClick(){
        self.navigationController?.popViewController(animated: true)
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
