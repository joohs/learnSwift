//
//  sampleSwiftCell.swift
//  learnSwift
//
//  Created by xiangxiong on 16/8/31.
//  Copyright © 2016年 xiangxiong. All rights reserved.
//

import Foundation



class sampleSwiftCell: UITableViewCell {

    var titleLabel:UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        if !self.isEqual(nil) {
            titleLabel = UILabel()
            titleLabel.frame = CGRectMake(20, self.frame.size.height/2, 200, 40)
            self.contentView.addSubview(titleLabel)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
