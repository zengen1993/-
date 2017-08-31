//
//  BBViewController.swift
//  ZESwift
//
//  Created by Apple on 2017/8/22.
//  Copyright © 2017年 Apple. All rights reserved.
//  闭包传值

import UIKit

class BBViewController: UIViewController {
    let btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "闭包"
        self.view.backgroundColor = UIColor.white
        configureUI()
    }
    func configureUI(){
        btn.frame = CGRect(x: 100, y: 300, width: kScreenwidth - 200, height: 44)
        btn.setTitle("确定", for: UIControlState.normal)
        btn.setTitleColor(UIColor.black, for:UIControlState.normal)
        btn.addTarget(self, action: "bClick", for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    func bClick(){
        let vc = BBViewController1()
        vc.block = { (_ title:String, _ color:UIColor) in
            
            self.btn.setTitle(title, for: UIControlState.normal)
            self.btn.setTitleColor(color, for:UIControlState.normal)
        }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
