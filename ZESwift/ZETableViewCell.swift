//
//  ZETableViewCell.swift
//  ZESwift
//
//  Created by Apple on 2017/8/22.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit
// 深绿
let kloginNormalColor = UIColor(red: 51/255.0, green: 191/255.0, blue: 130/255.0, alpha: 1)

class ZETableViewCell: UITableViewCell {
    
    lazy var nameLabel = UILabel()
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        configureUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureUI(){
        nameLabel.frame = CGRect(x: 10, y: 2, width: kScreenwidth, height: 40)
        nameLabel.font = UIFont.systemFont(ofSize: 15)
        nameLabel.textColor = UIColor.black
        nameLabel.highlightedTextColor = kloginNormalColor
        contentView.addSubview(nameLabel)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
