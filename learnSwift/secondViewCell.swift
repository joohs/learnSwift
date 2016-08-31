//
//  secondViewCell.swift
//  learnSwift
//
//  Created by xiangxiong on 16/8/31.
//  Copyright © 2016年 xiangxiong. All rights reserved.
//

import Foundation

class secondViewCell: UITableViewCell {
    var leftTopLabel:UILabel!
    var leftBottomLabel : UILabel!
    var rightTopLabel : UILabel!
    var rightBottomLabel : UILabel!
    
    
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        if !self.isEqual(nil) {
            leftTopLabel = UILabel()
            leftTopLabel.frame = CGRectMake(15, 0, 200, 40)
            self.contentView.addSubview(leftTopLabel)
            
            
            
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
