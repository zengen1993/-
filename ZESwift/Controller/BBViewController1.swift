//
//  BBViewController1.swift
//  ZESwift
//
//  Created by 殷年平 on 2017/8/31.
//  Copyright © 2017年 殷年平. All rights reserved.
//

import UIKit

typealias valuesBlock = (_ title:String, _ color:UIColor)-> Void

class BBViewController1: UIViewController {
    
    var block: valuesBlock?
    let btn = UIButton()
    var text = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "传值"
        self.view.backgroundColor = UIColor.white
        configureUI()
    }
    func configureUI(){
        text.frame = CGRect(x: 10, y: 200, width: kScreenwidth - 20, height: 44)
        text.placeholder = "输入文字"
        text.textAlignment = .left
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.gray.cgColor //边框颜色
        text.layer.cornerRadius = 6.0
        text.font = UIFont.systemFont(ofSize: 15)
        self.view.addSubview(text)
        
        btn.frame = CGRect(x: 100, y: 300, width: kScreenwidth - 200, height: 44)
        btn.setTitle("返回", for: UIControlState.normal)
        btn.setTitleColor(UIColor.black, for:UIControlState.normal)
        btn.addTarget(self, action: "bClick", for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    func bClick(){
        if text.text == ""{
            block!("zengen", UIColor.red)
        }
        else{
            block!(text.text!, UIColor.red)
        }
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
