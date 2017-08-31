//
//  XYViewController.swift
//  ZESwift
//
//  Created by 殷年平 on 2017/8/31.
//  Copyright © 2017年 殷年平. All rights reserved.
//

import UIKit
//要创建一个协议
protocol ZEdelegte : NSObjectProtocol{
    //在协议里面，声明方法
    //  第一个，改变标题
    func change(title:String)
    //  第二个，改变颜色
    func changeColor(Color:UIColor)
}
class XYViewController1: UIViewController {
    //  创建一个准守协议的对象
    var delegate_ze :ZEdelegte?
    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "传值"
        self.view.backgroundColor = UIColor.white
        configureUI()
    }
    func configureUI(){
        btn.frame = CGRect(x: 100, y: 300, width: kScreenwidth - 200, height: 44)
        btn.setTitle("返回", for: UIControlState.normal)
        btn.setTitleColor(UIColor.black, for:UIControlState.normal)
        btn.addTarget(self, action: "bClick", for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    func bClick(){
        delegate_ze?.change(title: "zengen")
        delegate_ze?.changeColor(Color: UIColor.red)
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
