//
//  secondViewController.swift
//  learnSwift
//
//  Created by xiangxiong on 16/8/31.
//  Copyright © 2016年 xiangxiong. All rights reserved.
//

import Foundation


class secondViewController: UITableViewController {

    let identifier:String = "cell"
    
    
    override func viewDidLoad() {
        
        self.title = "second"
        
        self.tableView.frame = CGRectMake(0, 0, UIScreen .mainScreen().bounds.size.width, UIScreen .mainScreen().bounds.size.height)
        tableView.registerClass(secondViewCell.self, forCellReuseIdentifier: identifier)
        tableView.tableFooterView = UIView()
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view:UIView = UIView(frame:CGRectMake(0, 0, UIScreen .mainScreen().bounds.size.width, 20))
        view.backgroundColor = UIColor.purpleColor()
        return view
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view:UIView = UIView()
        view.frame = CGRectMake(0, 0, UIScreen .mainScreen().bounds.size.width, 20)
        view.backgroundColor = UIColor.blueColor()
        return view
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        var  cell:secondViewCell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as!secondViewCell
        
        if cell.isEqual(nil) {
            cell = secondViewCell(style: .Default, reuseIdentifier: identifier)
        }
        cell.leftTopLabel.text = identifier
        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
