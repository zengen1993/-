//
//  XYViewController1.swift
//  ZESwift
//
//  Created by 殷年平 on 2017/8/31.
//  Copyright © 2017年 殷年平. All rights reserved.
//

import UIKit

class XYViewController: UIViewController{
    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "协议"
        
        self.view.backgroundColor = UIColor.white
        configureUI()
        // Do any additional setup after loading the view.
    }
    func configureUI(){
        btn.frame = CGRect(x: 100, y: 300, width: kScreenwidth - 200, height: 44)
        btn.setTitle("确定", for: UIControlState.normal)
        btn.setTitleColor(UIColor.black, for:UIControlState.normal)
        btn.addTarget(self, action: "bClick", for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    func bClick(){
        let vc = XYViewController1()
        vc.delegate_ze = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension XYViewController: ZEdelegte{
    func change(title: String) {
        self.btn.setTitle(title, for: .normal)
    }
    func changeColor(Color: UIColor) {
        self.btn.setTitleColor(Color, for: .normal)
    }
}
