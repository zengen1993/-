//
//  TZViewController.swift
//  ZESwift
//
//  Created by Apple on 2017/8/22.
//  Copyright © 2017年 Apple. All rights reserved.
//  通知传值

import UIKit

class TZViewController: UIViewController {
    var Label = UILabel()
    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "通知"
        self.view.backgroundColor = UIColor.white
        configureUI()
        print("通知完毕")
        let notificationName = Notification.Name(rawValue: "DownloadImageNotification")
        // 注册通知
        NotificationCenter.default.addObserver(self,
                                               selector:#selector(downloadImage(notification:)),
                                               name: notificationName, object: nil)
    }
    func configureUI(){
        btn.frame = CGRect(x: 100, y: 300, width: kScreenwidth - 200, height: 44)
        btn.setTitle("确定", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: Selector("BtnClick"), for: .touchUpInside)
        self.view.addSubview(btn)

        Label.frame = CGRect(x: 20, y: 64, width: kScreenwidth - 40, height: 44)
        Label.font = UIFont.systemFont(ofSize: 15)
        Label.text = "通知传值"
        Label.textColor = UIColor.black
        Label.textAlignment = .center
        self.view.addSubview(Label)
    }
    func downloadImage(notification: Notification){
        let userInfo = notification.userInfo as! [String: AnyObject]
        Label.text = "姓名: \(userInfo["name"] as! String),年龄: \(userInfo["age"] as! String) "
    }
    func BtnClick(){
        let vc = TZViewController1()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    deinit {
        // 移除通知监听
        NotificationCenter.default.removeObserver(self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
